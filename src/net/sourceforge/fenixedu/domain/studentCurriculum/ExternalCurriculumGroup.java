package net.sourceforge.fenixedu.domain.studentCurriculum;

import java.util.Set;

import net.sourceforge.fenixedu.domain.ExecutionPeriod;
import net.sourceforge.fenixedu.domain.Language;
import net.sourceforge.fenixedu.domain.StudentCurricularPlan;
import net.sourceforge.fenixedu.domain.curricularRules.CreditsLimitInExternalCycle;
import net.sourceforge.fenixedu.domain.curricularRules.ICurricularRule;
import net.sourceforge.fenixedu.domain.degreeStructure.CourseGroup;
import net.sourceforge.fenixedu.domain.degreeStructure.CycleCourseGroup;
import net.sourceforge.fenixedu.domain.exceptions.DomainException;
import net.sourceforge.fenixedu.util.MultiLanguageString;

import org.apache.commons.lang.StringUtils;

/**
 * 
 * @author - Shezad Anavarali (shezad@ist.utl.pt)
 * 
 */
public class ExternalCurriculumGroup extends ExternalCurriculumGroup_Base {

    public ExternalCurriculumGroup() {
	super();
    }

    public ExternalCurriculumGroup(final RootCurriculumGroup rootCurriculumGroup, final CycleCourseGroup cycleCourseGroup) {
	this();
	init(rootCurriculumGroup, cycleCourseGroup);
    }

    public ExternalCurriculumGroup(final RootCurriculumGroup rootCurriculumGroup, final CycleCourseGroup cycleCourseGroup,
	    final ExecutionPeriod executionPeriod) {
	this();
	init(rootCurriculumGroup, cycleCourseGroup, executionPeriod);
    }

    @Override
    protected void checkInitConstraints(final StudentCurricularPlan studentCurricularPlan, final CourseGroup courseGroup) {
	super.checkInitConstraints(studentCurricularPlan, courseGroup);

	if (studentCurricularPlan.getDegreeCurricularPlan() == courseGroup.getParentDegreeCurricularPlan()) {
	    throw new DomainException(
		    "error.studentCurriculum.CurriculumGroup.courseGroup.must.have.different.degreeCurricularPlan");
	}

	checkIfCycleCourseGroupIsInDestinationAffinitiesOfSource(studentCurricularPlan, courseGroup);

    }

    private void checkIfCycleCourseGroupIsInDestinationAffinitiesOfSource(final StudentCurricularPlan studentCurricularPlan,
	    final CourseGroup courseGroup) {
	final CycleCourseGroup cycleCourseGroup = (CycleCourseGroup) courseGroup;
	final CycleCourseGroup sourceAffinityCycleCourseGroup = studentCurricularPlan.getDegreeCurricularPlan()
		.getCycleCourseGroup(cycleCourseGroup.getCycleType().getSourceCycleAffinity());

	if (!sourceAffinityCycleCourseGroup.getDestinationAffinities().contains(cycleCourseGroup)) {
	    throw new DomainException(
		    "error.studentCurriculum.ExternalCurriculumGroup.cycle.course.group.does.not.belong.to.afinity.of.source");
	}
    }

    @Override
    public Integer getChildOrder() {
	return Integer.MAX_VALUE - 3;
    }

    @Override
    public Integer getChildOrder(ExecutionPeriod executionPeriod) {
	return getChildOrder();
    }

    @Override
    public MultiLanguageString getName() {
	final MultiLanguageString multiLanguageString = new MultiLanguageString();

	if (!StringUtils.isEmpty(getDegreeModule().getName())) {
	    multiLanguageString.setContent(Language.pt, getDegreeModule().getName() + " ("
		    + getDegreeCurricularPlanOfDegreeModule().getName() + ")");
	}

	if (!StringUtils.isEmpty(getDegreeModule().getNameEn())) {
	    multiLanguageString.setContent(Language.en, getDegreeModule().getNameEn() + " ("
		    + getDegreeCurricularPlanOfDegreeModule().getName() + ")");
	}

	return multiLanguageString;
    }

    @Override
    public Set<ICurricularRule> getCurricularRules(ExecutionPeriod executionPeriod) {
	final Set<ICurricularRule> result = super.getCurricularRules(executionPeriod);
	result.add(new CreditsLimitInExternalCycle(this));

	return result;
    }

    @Override
    public boolean isExternal() {
	return true;
    }

}
