package ServidorAplicacao.Servico.assiduousness;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.ListIterator;

import Dominio.Funcionario;
import ServidorAplicacao.ServicoAutorizacao;
import ServidorAplicacao.ServicoSeguro;
import ServidorAplicacao.Servico.exceptions.NotExecuteException;
import ServidorPersistenteJDBC.ICartaoPersistente;
import ServidorPersistenteJDBC.IFuncionarioPersistente;
import ServidorPersistenteJDBC.SuportePersistente;

/**
 *
 * @author  Fernanda Quit�rio & Tania Pous�o
 */
public class ServicoSeguroConstruirEscolhasMarcacoesPonto extends ServicoSeguro {
	private ArrayList _listaFuncionarios = null;
	private ArrayList _listaCartoes = null;

	private Timestamp _dataInicio;
	private Timestamp _dataFim;

	public ServicoSeguroConstruirEscolhasMarcacoesPonto(
		ServicoAutorizacao servicoAutorizacaoLer,
		ArrayList listaFuncionarios,
		ArrayList listaCartoes,
		Timestamp dataInicio,
		Timestamp dataFim) {
		super(servicoAutorizacaoLer);
		_listaFuncionarios = listaFuncionarios;
		_listaCartoes = listaCartoes;
		_dataInicio = dataInicio;
		_dataFim = dataFim;
	}

	public void execute() throws NotExecuteException {		

		IFuncionarioPersistente iFuncionarioPersistente = SuportePersistente.getInstance().iFuncionarioPersistente();
		ICartaoPersistente iCartaoPersistente = SuportePersistente.getInstance().iCartaoPersistente();

		Funcionario funcionario = null;
		Integer numMecanografico = null;
		ArrayList listaCartoesFuncionarios = null;

		if (_listaFuncionarios != null && _listaCartoes == null) {
			_listaCartoes = new ArrayList();
			_listaCartoes = (ArrayList) _listaFuncionarios.clone();

			ListIterator iterListaFuncionarios = _listaFuncionarios.listIterator();
			while (iterListaFuncionarios.hasNext()) {
				numMecanografico = (Integer) iterListaFuncionarios.next();
				if ((funcionario = iFuncionarioPersistente.lerFuncionarioPorNumMecanografico(numMecanografico.intValue())) == null) {
					throw new NotExecuteException("error.funcionario.naoExiste");
				}

				listaCartoesFuncionarios =
					iCartaoPersistente.lerCartoesFuncionarioComValidade(funcionario.getCodigoInterno(), _dataInicio, _dataFim);
				if (listaCartoesFuncionarios != null) {
					ListIterator iterListaCartoesFuncionarios = listaCartoesFuncionarios.listIterator();
					Integer numCartao = null;
					while (iterListaCartoesFuncionarios.hasNext()) {
						numCartao = (Integer) iterListaCartoesFuncionarios.next();
						if (!_listaCartoes.contains(numCartao)) {
							_listaCartoes.add(numCartao);
						}
					}
				}
			}
		} else if (_listaFuncionarios != null && _listaCartoes != null) {
			ArrayList listaCartoesConsultar = new ArrayList();

			ListIterator iterListaFuncionarios = _listaFuncionarios.listIterator();
			while (iterListaFuncionarios.hasNext()) {
				numMecanografico = (Integer) iterListaFuncionarios.next();
				if ((funcionario = iFuncionarioPersistente.lerFuncionarioPorNumMecanografico(numMecanografico.intValue())) == null) {
					throw new NotExecuteException("error.funcionario.naoExiste");
				}
				listaCartoesFuncionarios =
					iCartaoPersistente.lerCartoesFuncionarioComValidade(funcionario.getCodigoInterno(), _dataInicio, _dataFim);
				if (listaCartoesFuncionarios != null) {
					ListIterator iterListaCartoesFuncionarios = listaCartoesFuncionarios.listIterator();
					Integer numCartao = null;

					while (iterListaCartoesFuncionarios.hasNext()) {
						numCartao = (Integer) iterListaCartoesFuncionarios.next();
						/* interseccao das lista */
						if (_listaCartoes.contains(numCartao)
							&& listaCartoesFuncionarios.contains(numCartao)
							&& (!listaCartoesConsultar.contains(numCartao))) {
							listaCartoesConsultar.add(numCartao);
						}
					}
				}
			}
			_listaCartoes = listaCartoesConsultar;
		}
	}

	public ArrayList getListaFuncionarios() {
		return _listaFuncionarios;
	}
	public ArrayList getListaCartoes() {
		return _listaCartoes;
	}
}
