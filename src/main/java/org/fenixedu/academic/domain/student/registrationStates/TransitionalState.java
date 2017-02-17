/**
 * Copyright © 2002 Instituto Superior Técnico
 *
 * This file is part of FenixEdu Academic.
 *
 * FenixEdu Academic is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * FenixEdu Academic is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with FenixEdu Academic.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.fenixedu.academic.domain.student.registrationStates;

import java.util.HashSet;
import java.util.Set;

import org.fenixedu.academic.domain.Person;
import org.fenixedu.academic.domain.student.Registration;
import org.joda.time.DateTime;

public class TransitionalState extends TransitionalState_Base {

    private TransitionalState() {
        super();
    }

    protected TransitionalState(final Registration registration, final Person responsiblePerson, final DateTime stateDate) {
        this();
        init(registration, responsiblePerson, stateDate);
    }

    @Override
    public RegistrationStateTypeNew getStateType() {
        return RegistrationStateSystem.getInstance().getTransitionState();
    }

    @Override
    public Set<String> getValidNextStates() {
        final Set<String> result = new HashSet<String>();
        result.add(RegistrationStateType.TRANSITED.name());
        result.add(RegistrationStateType.CANCELED.name());
        result.add(RegistrationStateType.REGISTERED.name());
        result.add(RegistrationStateType.CONCLUDED.name());

        return result;
    }

}
