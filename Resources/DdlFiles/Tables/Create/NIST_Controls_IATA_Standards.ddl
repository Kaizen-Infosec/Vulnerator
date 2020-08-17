CREATE TABLE IF NOT EXISTS NIST_Controls_IATA_Standards (
    NIST_ControlIATA_Standard_ID INTEGER PRIMARY KEY,
    NIST_Control_ID INTEGER NOT NULL,
    IATA_Standard_ID INTEGER NOT NULL,
    UNIQUE (NIST_Control_ID, IATA_Standard_ID) ON CONFLICT IGNORE,
    FOREIGN KEY (NIST_Control_ID) REFERENCES NIST_Controls(NIST_Control_ID),
    FOREIGN KEY (IATA_Standard_ID) REFERENCES IATA_Standards(IATA_Standard_ID)
);