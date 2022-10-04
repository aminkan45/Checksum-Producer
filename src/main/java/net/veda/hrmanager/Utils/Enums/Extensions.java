package net.veda.hrmanager.Utils.Enums;

import lombok.Getter;

public enum Extensions {

    SQL("sql");

    Extensions(String character) {
        this.value = character;
    }

    @Getter
    private final String value;
    public static String getSqlExtension() {
        return UtilRegex.POINT.getValue() + SQL.getValue();
    }
}
