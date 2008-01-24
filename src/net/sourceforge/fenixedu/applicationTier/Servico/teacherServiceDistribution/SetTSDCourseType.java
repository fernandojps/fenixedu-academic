package net.sourceforge.fenixedu.applicationTier.Servico.teacherServiceDistribution;

import net.sourceforge.fenixedu.applicationTier.Service;
import net.sourceforge.fenixedu.domain.CompetenceCourse;
import net.sourceforge.fenixedu.domain.ExecutionPeriod;
import net.sourceforge.fenixedu.domain.teacherServiceDistribution.TSDCourseType;
import net.sourceforge.fenixedu.domain.teacherServiceDistribution.TeacherServiceDistribution;

public class SetTSDCourseType extends Service {
	public void run(Integer competenceCourseId, Integer tsdId, Integer executionPeriodId, String courseTSDProcessPhaseTypeString) {
		CompetenceCourse competenceCourse = rootDomainObject.readCompetenceCourseByOID(competenceCourseId);
		TeacherServiceDistribution tsd = rootDomainObject.readTeacherServiceDistributionByOID(tsdId);
		ExecutionPeriod executionPeriod = rootDomainObject.readExecutionPeriodByOID(executionPeriodId);
		
		TSDCourseType tsdCourseType = TSDCourseType.valueOf(courseTSDProcessPhaseTypeString);
		
		tsd.setTSDCourseType(competenceCourse, executionPeriod, tsdCourseType);
	}
}
