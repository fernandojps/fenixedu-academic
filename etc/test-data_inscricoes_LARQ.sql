-- -----------------------------
-- Data for table 'DEPARTMENT'
-- (ID_INTERNAL, NAME, CODE)
-- -----------------------------
delete from DEPARTMENT;
insert into DEPARTMENT values (1, 'Departamento de Engenharia Civil', 'DEC');

-- -----------------------------
-- Data for table 'DEPARTMENT_COURSE'
-- (ID_INTERNAL, CODE, NAME, KEY_DEPARTMENT)
-- -----------------------------
delete from DEPARTMENT_COURSE;
insert into DEPARTMENT_COURSE values (1, 'Disciplina Departamento', 'DD', 1);

-- -----------------------------
-- Data for table 'BRANCH'
-- (ID_INTERNAL, BRANCH_CODE, BRANCH_NAME)
-- -----------------------------
delete from BRANCH;
insert into BRANCH values (1, '', '');

-- -----------------------------
-- Data for table 'DEGREE'
-- (ID_INTERNAL, CODE, NAME, TYPE_DEGREE)
-- -----------------------------
delete from DEGREE;
insert into DEGREE values (1, 'LARQ', 'Licenciatura em Arquitectura', 1);

-- -----------------------------
-- Data for table 'DEGREE_CURRICULAR_PLAN'
-- (ID_INTERNAL, NAME, KEY_DEGREE, STATE, INITIAL_DATE, END_DATE, KEY_DEGREE_CURRICULAR_PLAN_ENROLMENT_INFO)
-- -----------------------------
delete from DEGREE_CURRICULAR_PLAN;
insert into DEGREE_CURRICULAR_PLAN values (1, 'LARQ-2003', 1, 1, '0000-00-00', '0000-00-00', 1);

-- -----------------------------
-- Data for table 'CURRICULAR_COURSE'
-- (ID_INTERNAL, KEY_DEPARTMENT_COURSE, KEY_DEGREE_CURRICULAR_PLAN, CREDITS, THEORETICAL_HOURS, PRATICAL_HOURS, THEO_PRAT_HOURS, LAB_HOURS, 
-- NAME, CODE, TYPE, EXECUTION_SCOPE, MANDATORY, KEY_CURRICULAR_COURSE_ENROLMENT_INFO)

-- -----------------------------
-- PRIMEIRO ANO, PRIMEIRO SEMESTRE:
delete from CURRICULAR_COURSE;
insert into CURRICULAR_COURSE values (1, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "INTRODU��O � PROGRAMA��O", "IK", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (2, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "AN�LISE MATEM�TICA I", "PY", 1, 1, 1, 1);
insert into CURRICULAR_COURSE values (3, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "�LGEBRA LINEAR", "QN", 1, 1, 1, 1);
insert into CURRICULAR_COURSE values (4, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "SISTEMAS DIGITAIS", "TU", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (5, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "TEORIA DA COMPUTA��O", "VI", 1, 1, 0, 1);
-- PRIMEIRO ANO, SEGUNDO SEMESTRE:
insert into CURRICULAR_COURSE values (6, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "ALGORITMOS E ESTRUTURA DE DADOS", "01", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (7, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "ARQUITECTURA DE COMPUTADORES", "02", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (8, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "AN�LISE MATEM�TICA II", "P5", 1, 1, 1, 1);
insert into CURRICULAR_COURSE values (9, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "F�SICA I - CURSO INFORM�TICA", "A37", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (10, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "MATEM�TICA COMPUTACIONAL", "AG7", 1, 1, 0, 1);
-- SEGUNDO ANO, PRIMEIRO SEMESTRE:
insert into CURRICULAR_COURSE values (11, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "AN�LISE MATEM�TICA III", "", 1, 1, 1, 1);
insert into CURRICULAR_COURSE values (12, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "F�SICA II", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (13, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "SISTEMAS OPERATIVOS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (14, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "PROGRAMA��O COM OBJECTOS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (15, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "REDES DE COMPUTADORES I", "", 1, 1, 0, 1);
-- SEGUNDO ANO, SEGUNDO SEMESTRE:
insert into CURRICULAR_COURSE values (16, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "AN�LISE MATEM�TICA IV", "", 1, 1, 1, 1);
insert into CURRICULAR_COURSE values (17, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "PROBABILIDADES E ESTAT�STICA", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (18, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "COMPUTA��O GR�FICA", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (19, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "SINAIS E SISTEMAS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (20, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "BASES DE DADOS", "", 1, 1, 0, 1);
-- TERCEIRO ANO, PRIMEIRO SEMESTRE:
insert into CURRICULAR_COURSE values (21, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "ELECTR�NICA I", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (22, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "FUNDAMENTOS DAS TELECOMUNICA��ES", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (23, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "SISTEMAS DISTRIBU�DOS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (24, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "REDES DE COMPUTADORES II", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (25, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "INTERFACES PESSOA-M�QUINA", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (26, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "GEST�O DE REDES E SISTEMAS DISTRIBU�DOS", "", 1, 1, 0, 1);
-- TERCEIRO ANO, SEGUNDO SEMESTRE:
insert into CURRICULAR_COURSE values (27, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "ELECTR�NICA II", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (28, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "SISTEMAS EMBEBIDOS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (29, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "PROPAGA��O E ANTENAS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (30, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "REDES COM INTEGRA��O DE SERVI�OS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (31, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "INTELIG�NCIA ARTIFICIAL", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (32, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "APLICA��ES EM REDES DE GRANDE ESCALA", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (33, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "COMPILADORES", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (34, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "MODELA��O DE SISTEMAS DE INFORMA��O", "", 1, 1, 0, 1);
-- QUARTO ANO, PRIMEIRO SEMESTRE:
insert into CURRICULAR_COURSE values (35, 1, 1, 4.0, 3.0, 2.0, 0.0, 2.0, "SOFTWARE DE TELECOMUNICA��ES", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (37, 1, 1, 4.0, 3.0, 0.0, 2.0, 2.0, "SEGURAN�A EM REDES", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (38, 1, 1, 4.0, 3.0, 1.0, 2.0, 2.0, "SISTEMAS DE TELECOMUNICA��ES", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (39, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "APLICA��ES PARA SISTEMAS EMBEBIDOS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (40, 1, 1, 4.0, 3.0, 0.0, 0.0, 2.0, "ENGENHARIA DE SOFTWARE", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (41, 1, 1, 4.0, 3.0, 0.0, 2.0, 0.0, "GEST�O DE PROJECTOS INFORM�TICOS", "", 1, 1, 0, 1);
-- QUARTO ANO, SEGUNDO SEMESTRE:
insert into CURRICULAR_COURSE values (42, 1, 1, 4.0, 3.0, 0.0, 2.0, 0.0, "REDES M�VEIS E SEM FIOS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (43, 1, 1, 4.0, 3.0, 0.0, 0.0, 0.0, "REDES DE ACESSO", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (44, 1, 1, 4.0, 3.0, 0.0, 3.0, 0.0, "COMUNICA��O DE �UDIO E V�DEO", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (45, 1, 1, 4.0, 3.0, 0.0, 2.0, 0.0, "PLANEAMENTO DE PROJECTO E REDES", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (46, 1, 1, 4.0, 3.0, 0.0, 2.0, 0.0, "COMPUTA��O M�VEL", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (47, 1, 1, 4.0, 3.0, 0.0, 2.0, 0.0, "PRODU��O DE CONTE�DOS MULTIM�DIA", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (48, 1, 1, 4.0, 3.0, 0.0, 2.0, 0.0, "PROJECTO DE APLICA��ES E SERVI�OS", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (50, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "CARTEIRA PESSOAL", "", 1, 1, 0, 1);
-- QUINTO ANO, PRIMEIRO SEMESTRE:
insert into CURRICULAR_COURSE values (51, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "OP��O I", "", 2, 1, 0, 1);
insert into CURRICULAR_COURSE values (52, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "OP��O II", "", 2, 1, 0, 1);
insert into CURRICULAR_COURSE values (53, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "TRABALHO FINAL DE CURSO", "", 4, 1, 0, 1);
-- QUINTO ANO, SEGUNDO SEMESTRE:
insert into CURRICULAR_COURSE values (54, 1, 1, 4.0, 3.0, 2.0, 0.0, 0.0, "OP��O III", "", 2, 1, 0, 1);
insert into CURRICULAR_COURSE values (55, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "OP��O IV", "", 2, 1, 0, 1);
insert into CURRICULAR_COURSE values (56, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "TRABALHO FINAL DE CURSO II", "", 4, 1, 0, 1);
-- CADEIRAS DE OP��O:
insert into CURRICULAR_COURSE values (57, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "ESCOLHA I", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (58, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "ESCOLHA II", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (59, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "ESCOLHA III", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (60, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "ESCOLHA IV", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (61, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "ESCOLHA V", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (62, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "ESCOLHA VI", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (63, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "ESCOLHA VII", "", 1, 1, 0, 1);
insert into CURRICULAR_COURSE values (64, 1, 1, 4.0, 0.0, 0.0, 0.0, 0.0, "ESCOLHA VIII", "", 1, 1, 0, 1);

-- -----------------------------
-- Data for table 'CURRICULAR_COURSE_SCOPE'
-- (ID_INTERNAL, KEY_CURRICULAR_SEMESTER, KEY_CURRICULAR_COURSE, KEY_BRANCH, THEORETICAL_HOURS, PRATICAL_HOURS, THEO_PRAT_HOURS, LAB_HOURS)
-- -----------------------------
delete from CURRICULAR_COURSE_SCOPE;
insert into CURRICULAR_COURSE_SCOPE  values (1, 1, 1, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (2, 1, 2, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (3, 1, 3, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (4, 1, 4, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (5, 1, 5, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (6, 1, 6, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (7, 2, 7, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (8, 2, 8, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (9, 2, 9, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (10, 2, 10, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (11, 2, 11, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (12, 2, 12, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (13, 3, 13, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (14, 3, 14, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (15, 3, 15, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (16, 3, 16, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (17, 3, 17, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (18, 3, 18, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (19, 4, 19, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (20, 4, 20, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (21, 4, 21, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (22, 4, 22, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (23, 4, 23, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (24, 4, 24, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (25, 5, 48, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (26, 5, 50, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (27, 5, 25, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (28, 5, 26, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (29, 5, 27, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (30, 5, 28, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (31, 6, 29, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (32, 6, 30, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (33, 6, 31, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (34, 6, 32, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (35, 6, 33, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (36, 6, 34, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (37, 7, 35, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (38, 7, 53, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (39, 7, 37, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (40, 7, 38, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (41, 7, 56, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (42, 7, 39, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (43, 8, 40, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (44, 8, 41, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (45, 8, 42, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (46, 8, 43, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (47, 8, 44, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (48, 9, 45, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (49, 10, 46, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (50, 10, 47, 1, 0.0, 0.0, 0.0, 0.0);

insert into CURRICULAR_COURSE_SCOPE  values (51, 9, 51, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (52, 9, 52, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (53, 10, 54, 1, 0.0, 0.0, 0.0, 0.0);
insert into CURRICULAR_COURSE_SCOPE  values (54, 10, 55, 1, 0.0, 0.0, 0.0, 0.0);

-- -----------------------------
-- Data for table 'POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE'
-- (ID_INTERNAL, KEY_POSSIBLE_CURRICULAR_COURSE, KEY_OPTIONAL_CURRICULAR_COURSE)
-- -----------------------------
delete from POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE;
insert into POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE values (1, 57, 51);
insert into POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE values (2, 58, 51);
insert into POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE values (3, 59, 52);
insert into POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE values (4, 60, 52);
insert into POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE values (5, 61, 53);
insert into POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE values (6, 62, 53);
insert into POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE values (7, 63, 54);
insert into POSSIBLE_CURRICULAR_COURSE_FOR_OPTIONAL_CURRICULAR_COURSE values (8, 64, 54);

-- -----------------------------
-- Data for table 'ENROLMENT'
-- (ID_INTERNAL, KEY_STUDENT_CURRICULAR_PLAN, KEY_CURRICULAR_COURSE, KEY_EXECUTION_PERIOD, STATE)
-- -----------------------------
delete from ENROLMENT;
insert into ENROLMENT values (1, 1, 1, 1, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (2, 1, 2, 1, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (3, 1, 3, 1, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (4, 1, 4, 1, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (5, 1, 5, 1, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (6, 1, 6, 1, 1, 'Dominio.Enrolment', null);

insert into ENROLMENT values (7, 1, 7, 2, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (8, 1, 8, 2, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (9, 1, 9, 2, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (10, 1, 10, 2, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (11, 1, 11, 2, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (12, 1, 12, 2, 1, 'Dominio.Enrolment', null);

insert into ENROLMENT values (13, 1, 13, 3, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (14, 1, 14, 3, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (15, 1, 15, 3, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (16, 1, 16, 3, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (17, 1, 17, 3, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (18, 1, 18, 3, 1, 'Dominio.Enrolment', null);

insert into ENROLMENT values (19, 1, 19, 4, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (20, 1, 20, 4, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (21, 1, 21, 4, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (22, 1, 22, 4, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (23, 1, 23, 4, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (24, 1, 24, 4, 1, 'Dominio.Enrolment', null);

insert into ENROLMENT values (25, 1, 25, 5, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (26, 1, 26, 5, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (27, 1, 27, 5, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (28, 1, 28, 5, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (29, 1, 29, 5, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (30, 1, 30, 5, 1, 'Dominio.Enrolment', null);

insert into ENROLMENT values (31, 1, 31, 6, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (32, 1, 32, 6, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (33, 1, 33, 6, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (34, 1, 34, 6, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (35, 1, 35, 6, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (36, 1, 37, 6, 1, 'Dominio.Enrolment', null);

insert into ENROLMENT values (37, 1, 38, 7, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (38, 1, 39, 7, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (39, 1, 40, 7, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (40, 1, 41, 7, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (41, 1, 42, 7, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (42, 1, 43, 7, 1, 'Dominio.Enrolment', null);

insert into ENROLMENT values (43, 1, 44, 8, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (44, 1, 45, 8, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (45, 1, 46, 8, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (46, 1, 47, 8, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (47, 1, 48, 8, 1, 'Dominio.Enrolment', null);
insert into ENROLMENT values (48, 1, 50, 8, 1, 'Dominio.Enrolment', null);
