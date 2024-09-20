CREATE TABLE
  `Alumno` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `Email` varchar(255) NOT NULL,
    `Password` varchar(255) NOT NULL,
    `Confirm` tinyint(1) DEFAULT 0,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `Email` (`Email`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci

CREATE TABLE
  `Departamento` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `Nombre` varchar(255) NOT NULL,
    PRIMARY KEY (`ID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci

CREATE TABLE
  `Docente` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `Nombre` varchar(255) NOT NULL,
    `ApPaterno` varchar(255) NOT NULL,
    `ApMaterno` varchar(255) NOT NULL,
    `GradoEstudio` varchar(255) DEFAULT NULL,
    `Foto` varchar(255) DEFAULT NULL,
    `Email` varchar(255) NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `Email` (`Email`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 12 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci

CREATE TABLE
  `Materias` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `Nombre` varchar(255) NOT NULL,
    `id_departamento` int(11) DEFAULT NULL,
    PRIMARY KEY (`ID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci

CREATE TABLE
  `Pertenecen` (
    `ID_REGISTRO` int(11) NOT NULL AUTO_INCREMENT,
    `ID_DOCENTE` int(11) NOT NULL,
    `ID_DEPARTAMENTO` int(11) NOT NULL,
    PRIMARY KEY (`ID_REGISTRO`),
    KEY `ID_DOCENTE` (`ID_DOCENTE`),
    KEY `ID_DEPARTAMENTO` (`ID_DEPARTAMENTO`),
    CONSTRAINT `Pertenecen_ibfk_1` FOREIGN KEY (`ID_DOCENTE`) REFERENCES `Docente` (`ID`),
    CONSTRAINT `Pertenecen_ibfk_2` FOREIGN KEY (`ID_DEPARTAMENTO`) REFERENCES `Departamento` (`ID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 12 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci

CREATE TABLE
  `Puntaje` (
    `ID` int(11) NOT NULL AUTO_INCREMENT,
    `ID_ALUMNO` int(11) NOT NULL,
    `ID_DOCENTE` int(11) NOT NULL,
    `ID_MATERIA` int(11) NOT NULL,
    `Calificacion` int(11) NOT NULL,
    `Opinion` text DEFAULT NULL,
    `Fecha` date DEFAULT NULL,
    PRIMARY KEY (`ID`),
    KEY `ID_ALUMNO` (`ID_ALUMNO`),
    KEY `ID_DOCENTE` (`ID_DOCENTE`),
    KEY `Puntaje_ibfk_3` (`ID_MATERIA`),
    CONSTRAINT `Puntaje_ibfk_1` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `Alumno` (`ID`),
    CONSTRAINT `Puntaje_ibfk_2` FOREIGN KEY (`ID_DOCENTE`) REFERENCES `Docente` (`ID`),
    CONSTRAINT `Puntaje_ibfk_3` FOREIGN KEY (`ID_MATERIA`) REFERENCES `Materias` (`ID`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 13 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci



