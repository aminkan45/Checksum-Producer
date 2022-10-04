/*
 * Copyright 2022 VEDA GmbH. All rights reserved.
 * Use is subject to license terms.
 */
package net.veda.hrmanager.Utils.Enums;

import lombok.Getter;

import java.io.File;

/**
 * @author Amin Mohamed
 */
public enum UtilRegex {

    VEDA("VEDA"),
    STAR("*"),
    DOUBLE_POINT(":"),
    BACK_SLASH("/"),
    EMPTY(""),
    POINT("."),
    SLASH(File.separator),
    NEWLINE("\n"),
    SQL_FILES_FOLDER_NAME("skripte"),
    VARIATIONAL("versionX");


    UtilRegex(String character) {
        this.value = character;
    }

    @Getter
    private final String value;


    public static String checkSumCommentsStartsWith() {
        return BACK_SLASH.getValue() + STAR.getValue() + VEDA.getValue() + DOUBLE_POINT.getValue();
    }

    public static String checkSumCommentsEndsWith() {
        return STAR.getValue() + BACK_SLASH.getValue();
    }


}
