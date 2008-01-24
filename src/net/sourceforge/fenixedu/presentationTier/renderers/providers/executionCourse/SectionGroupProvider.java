package net.sourceforge.fenixedu.presentationTier.renderers.providers.executionCourse;

import net.sourceforge.fenixedu.domain.Section;
import net.sourceforge.fenixedu.domain.Site;
import net.sourceforge.fenixedu.renderers.components.converters.Converter;

import org.apache.commons.collections.list.UnmodifiableList;

public class SectionGroupProvider extends SectionProvider {

    @Override
    public Object provideForContext(Site site, Section superiorSection, Section self) {
        return UnmodifiableList.decorate(site.getContextualPermissionGroups());
    }

    @Override
    public Converter getConverter() {
        return null;
    }

}
