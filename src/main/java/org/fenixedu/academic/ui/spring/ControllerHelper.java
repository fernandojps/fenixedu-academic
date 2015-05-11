package org.fenixedu.academic.ui.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class ControllerHelper {
    protected static final String ERROR_MESSAGES = "errorMessages";
    protected static final String WARNING_MESSAGES = "warningMessages";
    protected static final String INFO_MESSAGES = "infoMessages";

    // The list of INFO messages that can be showed on View
    public static void addInfoMessage(String message, Model model) {
        if (!model.containsAttribute(INFO_MESSAGES)) {
            model.addAttribute(INFO_MESSAGES, new ArrayList<String>());
        }
        ((List<String>) model.asMap().get(INFO_MESSAGES)).add(message);
    }

    // The list of WARNING messages that can be showed on View
    public static void addWarningMessage(String message, Model model) {
        if (!model.containsAttribute(WARNING_MESSAGES)) {
            model.addAttribute(WARNING_MESSAGES, new ArrayList<String>());
        }
        ((List<String>) model.asMap().get(WARNING_MESSAGES)).add(message);
    }

    // The list of ERROR messages that can be showed on View
    public static void addErrorMessage(String message, Model model) {
        if (!model.containsAttribute(ERROR_MESSAGES)) {
            model.addAttribute(ERROR_MESSAGES, new ArrayList<String>());
        }
        ((List<String>) model.asMap().get(ERROR_MESSAGES)).add(message);
    }

    public static void clearMessages(Model model) {
        model.addAttribute(INFO_MESSAGES, new ArrayList<String>());
        model.addAttribute(WARNING_MESSAGES, new ArrayList<String>());
        model.addAttribute(ERROR_MESSAGES, new ArrayList<String>());
    }

    public static String redirect(String destinationAction, Model model, RedirectAttributes redirectAttributes) {
        if (model.containsAttribute(INFO_MESSAGES)) {
            redirectAttributes.addFlashAttribute(INFO_MESSAGES, model.asMap().get(INFO_MESSAGES));
        }
        if (model.containsAttribute(WARNING_MESSAGES)) {
            redirectAttributes.addFlashAttribute(WARNING_MESSAGES, model.asMap().get(WARNING_MESSAGES));
        }
        if (model.containsAttribute(ERROR_MESSAGES)) {
            redirectAttributes.addFlashAttribute(ERROR_MESSAGES, model.asMap().get(ERROR_MESSAGES));
        }

        return "redirect:" + destinationAction;
    }
}
