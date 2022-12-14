CREATE TABLE PRACOWNICY (
    ID_pracownika int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    imie varchar(30) NOT NULL,
    nazwisko varchar(30) NOT NULL,
    pesel varchar(11) NOT NULL,
    data_wprowadzenia date NOT NULL,
    magazynier bit NOT NULL,
    ilosc_godzin_tyg int NOT NULL,
    plec varchar(1) NOT NULL,
    wiek int NOT NULL
);

CREATE TABLE INFORMACJE_O_DOSTAWIE (
    ID_raportu int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    data_dostaw date NOT NULL,
    wydatki_w_zl int NOT NULL,
    ilosc_pojazdow_przewozacych int NOT NULL
);

CREATE TABLE KOSZTY_UTRZYMANIA (
    ID_wydatkow int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    koszty_za_wynajem int NOT NULL,
    koszty_napraw int NOT NULL,
    wydatki_roczne int NOT NULL
);

CREATE TABLE ZAROBKI (
    ID_miesiaca_zarobkow int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    miesiac_rok_zarobkow date NOT NULL,
    ilosc_sprzedanych_produktow int NOT NULL,
    ilosc_sprzedanych_produktow_online int NOT NULL,
    ilosc_pieniedzy_w_banku int NOT NULL,
    zarobione_pieniadze_mies int NOT NULL
);

CREATE TABLE FINANSE (
    ID_banku int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    ilosc_pieniedzy_w_banku int NOT NULL,
    przychody_roczne int NOT NULL,
    wydatki_roczne int NOT NULL,
    ilosc_wplat_rocznie int NOT NULL,
    wyplaty_w_zl int NOT NULL,
    rok_zarobkow int NOT NULL
);
