drop table reservation;
drop table arrangement CASCADE CONSTRAINTS;
drop table packet;
drop table guide;
drop table customer CASCADE CONSTRAINTS;
drop table membership;
drop table excursion CASCADE CONSTRAINTS;
drop table location;
drop table transport;


create table reservation(
reservation_id varchar2(4),
customer_id varchar2(4),
guide_id varchar2(4),
excursion_id varchar2(4),
reservation_date date,
reservation_people number,
reservation_request varchar2(20),
packet_id  varchar2(1),
CONSTRAINT reservation_pk PRIMARY KEY (reservation_id)
);

create table packet(
packet_id varchar2(1),
packet_desc varchar2(10),
packet_price number,
packet_insu varchar2(1),
packet_insu_price number,
CONSTRAINT packet_pk PRIMARY KEY (packet_id)
);

create table guide(
guide_id varchar2(4),
guide_name varchar2(30),
guide_gender varchar2(1),
guide_salary number,
guide_hire_date date,
CONSTRAINT guide_pk PRIMARY KEY (guide_id)
);

create table customer(
customer_id varchar2(4),
customer_name varchar2(30),
customer_gender varchar2(1),
membership_id varchar2(1),
customer_region varchar2(10),
customer_address varchar2(30),
customer_number varchar2(20),
CONSTRAINT customer_pk PRIMARY KEY (customer_id)
);

create table membership(
membership_id varchar2(1),
membership_status varchar2(1),
membership_type varchar2(10),
membership_discount number,
CONSTRAINT membership_pk PRIMARY KEY (membership_id)
);

create table excursion(
excursion_id	varchar2(3),
excursion_dep	Date,
excursion_ret	Date,
location_id	varchar2(3),
arrangement_id	varchar2(4),
transport_id	varchar2(3),
CONSTRAINT excursion_pk PRIMARY KEY (excursion_id)
);

create table transport(
transport_id	varchar2(3),
transport_type	varchar2(10),
transport_price	number,
CONSTRAINT transport_pk PRIMARY KEY (transport_id)
);

create table location(
location_id	varchar2(3),
location_location	varchar2(15),
location_type	varchar2(15),
location_price	number,
CONSTRAINT location_pk PRIMARY KEY (location_id)
);

create table arrangement(
arrangement_id	varchar2(4),
arrangement_desc	varchar2(15),
arrangement_price	number,
CONSTRAINT arrangement_pk PRIMARY KEY (arrangement_id)
);


insert into reservation values ('R01', 'C52', 'G12', 'E17', '18-Jun-2015', 5, 'None', 'S');
insert into reservation values ('R02', 'C84', 'G14', 'E01', '31-May-2015', 5, 'Child Proof', 'B');
insert into reservation values ('R03', 'C33', 'G16', 'E07', '30-Oct-2015', 5, 'Hendicaped', 'G');
insert into reservation values ('R04', 'C48', 'G11', 'E05', '10-Dec-2015', 6, 'Quiet Floor', 'S');
insert into reservation values ('R05', 'C08', 'G09', 'E09', '16-Aug-2015', 5, 'Quiet Floor', 'S');
insert into reservation values ('R06', 'C57', 'G03', 'E12', '29-Aug-2015', 5, 'Quiet Floor', 'S');
insert into reservation values ('R07', 'C28', 'G05', 'E15', '23-Jun-2015', 1, 'Quiet Floor', 'G');
insert into reservation values ('R08', 'C23', 'G20', 'E16', '16-Apr-2015', 6, 'Quiet Floor', 'S');
insert into reservation values ('R09', 'C89', 'G24', 'E04', '16-Dec-2015', 4, 'Hendicaped', 'S');
insert into reservation values ('R10', 'C84', 'G25', 'E15', '17-Jun-2015', 2, 'Vegeterian', 'S');
insert into reservation values ('R11', 'C09', 'G07', 'E02', '13-Apr-2015', 4, 'Pets Allowed', 'B');
insert into reservation values ('R12', 'C75', 'G03', 'E13', '19-Sep-2015', 5, 'Child Proof', 'G');
insert into reservation values ('R13', 'C08', 'G07', 'E10', '22-Dec-2015', 1, 'Pets Allowed', 'B');
insert into reservation values ('R14', 'C25', 'G19', 'E15', '17-Dec-2015', 3, 'None', 'G');
insert into reservation values ('R15', 'C22', 'G03', 'E17', '30-Aug-2015', 6, 'None', 'S');
insert into reservation values ('R16', 'C75', 'G21', 'E19', '27-Dec-2015', 1, 'Child Proof', 'B');
insert into reservation values ('R17', 'C29', 'G25', 'E20', '22-May-2015', 2, 'Child Proof', 'B');
insert into reservation values ('R18', 'C26', 'G11', 'E18', '20-Apr-2015', 1, 'Non Smoking', 'P');
insert into reservation values ('R19', 'C11', 'G12', 'E01', '26-Mar-2015', 1, 'None', 'G');
insert into reservation values ('R20', 'C05', 'G05', 'E02', '11-May-2015', 6, 'None', 'G');
insert into reservation values ('R21', 'C35', 'G16', 'E04', '14-Aug-2015', 5, 'Quiet Floor', 'P');
insert into reservation values ('R22', 'C64', 'G25', 'E16', '12-Aug-2015', 5, 'None', 'P');
insert into reservation values ('R23', 'C62', 'G05', 'E17', '26-Aug-2015', 1, 'Quiet Floor', 'P');
insert into reservation values ('R24', 'C01', 'G15', 'E04', '13-Mar-2015', 2, 'Pets Allowed', 'G');
insert into reservation values ('R25', 'C79', 'G01', 'E19', '06-Jan-2016', 3, 'Pets Allowed', 'B');
insert into reservation values ('R26', 'C100', 'G22', 'E02', '03-Jan-2016', 3, 'Child Proof', 'B');
insert into reservation values ('R27', 'C58', 'G19', 'E18', '13-Sep-2015', 1, 'Non Smoking', 'G');
insert into reservation values ('R28', 'C09', 'G03', 'E11', '13-Mar-2015', 6, 'Quiet Floor', 'B');
insert into reservation values ('R29', 'C36', 'G22', 'E19', '17-Jun-2015', 4, 'Pets Allowed', 'G');
insert into reservation values ('R30', 'C27', 'G12', 'E18', '11-Apr-2015', 2, 'Pets Allowed', 'G');
insert into reservation values ('R31', 'C27', 'G16', 'E20', '19-Jan-2015', 1, 'Non Smoking', 'G');
insert into reservation values ('R32', 'C32', 'G01', 'E03', '30-Jan-2016', 3, 'Quiet Floor', 'G');
insert into reservation values ('R33', 'C50', 'G02', 'E05', '02-Feb-2015', 6, 'None', 'S');
insert into reservation values ('R34', 'C21', 'G16', 'E05', '03-Sep-2015', 2, 'Hendicaped', 'S');
insert into reservation values ('R35', 'C92', 'G25', 'E10', '24-Nov-2015', 2, 'Vegeterian', 'S');
insert into reservation values ('R36', 'C83', 'G10', 'E04', '28-Oct-2015', 6, 'Pets Allowed', 'P');
insert into reservation values ('R37', 'C85', 'G13', 'E12', '01-Aug-2015', 4, 'Pets Allowed', 'S');
insert into reservation values ('R38', 'C91', 'G04', 'E13', '20-Nov-2015', 1, 'Vegeterian', 'P');
insert into reservation values ('R39', 'C21', 'G23', 'E17', '01-Dec-2015', 3, 'Hendicaped', 'B');
insert into reservation values ('R40', 'C29', 'G11', 'E13', '03-Aug-2015', 3, 'None', 'P');
insert into reservation values ('R41', 'C78', 'G09', 'E04', '16-Jul-2015', 6, 'None', 'S');
insert into reservation values ('R42', 'C28', 'G07', 'E11', '28-Nov-2015', 3, 'Non Smoking', 'S');
insert into reservation values ('R43', 'C80', 'G06', 'E02', '22-Apr-2015', 5, 'None', 'B');
insert into reservation values ('R44', 'C47', 'G25', 'E10', '11-Dec-2015', 4, 'Non Smoking', 'S');
insert into reservation values ('R45', 'C82', 'G15', 'E01', '07-Apr-2015', 5, 'Quiet Floor', 'S');
insert into reservation values ('R46', 'C58', 'G06', 'E16', '29-May-2015', 1, 'None', 'G');
insert into reservation values ('R47', 'C76', 'G19', 'E05', '26-Feb-2015', 6, 'Non Smoking', 'B');
insert into reservation values ('R48', 'C72', 'G05', 'E13', '03-Apr-2015', 2, 'Child Proof', 'S');
insert into reservation values ('R49', 'C24', 'G11', 'E08', '26-Feb-2015', 4, 'None', 'P');
insert into reservation values ('R50', 'C86', 'G15', 'E06', '08-May-2015', 4, 'Pets Allowed', 'S');
insert into reservation values ('R51', 'C15', 'G22', 'E20', '01-Nov-2015', 2, 'Hendicaped', 'B');
insert into reservation values ('R52', 'C47', 'G23', 'E02', '12-Aug-2015', 3, 'Quiet Floor', 'B');
insert into reservation values ('R53', 'C49', 'G04', 'E10', '20-Feb-2015', 5, 'Non Smoking', 'B');
insert into reservation values ('R54', 'C54', 'G02', 'E06', '22-Apr-2015', 5, 'None', 'P');
insert into reservation values ('R55', 'C46', 'G02', 'E02', '12-May-2015', 3, 'Hendicaped', 'S');
insert into reservation values ('R56', 'C72', 'G04', 'E11', '25-Oct-2015', 4, 'Vegeterian', 'S');
insert into reservation values ('R57', 'C75', 'G02', 'E15', '30-Mar-2015', 4, 'Hendicaped', 'B');
insert into reservation values ('R58', 'C84', 'G16', 'E02', '23-Jan-2015', 4, 'Hendicaped', 'S');
insert into reservation values ('R59', 'C15', 'G11', 'E19', '07-May-2015', 1, 'Quiet Floor', 'G');
insert into reservation values ('R60', 'C55', 'G15', 'E19', '25-Feb-2015', 1, 'Child Proof', 'S');
insert into reservation values ('R61', 'C37', 'G15', 'E09', '09-Jan-2015', 3, 'Pets Allowed', 'G');
insert into reservation values ('R62', 'C31', 'G09', 'E09', '02-Mar-2015', 4, 'Vegeterian', 'G');
insert into reservation values ('R63', 'C11', 'G02', 'E17', '23-Jan-2015', 4, 'Vegeterian', 'B');
insert into reservation values ('R64', 'C61', 'G06', 'E19', '10-Jan-2015', 6, 'Non Smoking', 'P');
insert into reservation values ('R65', 'C42', 'G08', 'E05', '19-Mar-2015', 6, 'Pets Allowed', 'P');
insert into reservation values ('R66', 'C36', 'G18', 'E19', '22-Apr-2015', 5, 'Hendicaped', 'P');
insert into reservation values ('R67', 'C22', 'G19', 'E16', '19-Mar-2015', 3, 'Non Smoking', 'G');
insert into reservation values ('R68', 'C65', 'G17', 'E06', '01-Mar-2015', 2, 'Pets Allowed', 'G');
insert into reservation values ('R69', 'C18', 'G16', 'E13', '02-Jan-2015', 3, 'None', 'G');
insert into reservation values ('R70', 'C68', 'G02', 'E14', '05-Dec-2015', 6, 'Pets Allowed', 'S');
insert into reservation values ('R71', 'C77', 'G07', 'E18', '26-Mar-2015', 3, 'Quiet Floor', 'B');
insert into reservation values ('R72', 'C97', 'G18', 'E11', '29-Mar-2015', 3, 'None', 'P');
insert into reservation values ('R73', 'C61', 'G09', 'E07', '01-Nov-2015', 4, 'Quiet Floor', 'B');
insert into reservation values ('R74', 'C82', 'G08', 'E17', '12-Jul-2015', 5, 'Pets Allowed', 'B');
insert into reservation values ('R75', 'C03', 'G24', 'E15', '29-Dec-2015', 3, 'Hendicaped', 'P');
insert into reservation values ('R76', 'C98', 'G23', 'E10', '05-Jun-2015', 1, 'Vegeterian', 'P');
insert into reservation values ('R77', 'C91', 'G02', 'E20', '10-Jun-2015', 2, 'Quiet Floor', 'S');
insert into reservation values ('R78', 'C64', 'G08', 'E18', '17-Jul-2015', 1, 'Vegeterian', 'S');
insert into reservation values ('R79', 'C73', 'G08', 'E01', '09-Jan-2016', 2, 'Quiet Floor', 'G');
insert into reservation values ('R80', 'C64', 'G01', 'E11', '02-Nov-2015', 1, 'None', 'P');
insert into reservation values ('R81', 'C95', 'G19', 'E12', '22-Dec-2015', 6, 'None', 'S');
insert into reservation values ('R82', 'C86', 'G09', 'E05', '12-Jun-2015', 1, 'Vegeterian', 'G');
insert into reservation values ('R83', 'C53', 'G09', 'E04', '12-Apr-2015', 2, 'None', 'G');
insert into reservation values ('R84', 'C100', 'G13', 'E06', '30-Dec-2015', 5, 'Non Smoking', 'P');
insert into reservation values ('R85', 'C81', 'G04', 'E16', '19-Nov-2015', 2, 'Child Proof', 'G');
insert into reservation values ('R86', 'C48', 'G15', 'E19', '27-Jun-2015', 2, 'None', 'G');
insert into reservation values ('R87', 'C55', 'G04', 'E09', '13-Sep-2015', 4, 'Non Smoking', 'S');
insert into reservation values ('R88', 'C69', 'G25', 'E03', '20-May-2015', 3, 'Hendicaped', 'B');
insert into reservation values ('R89', 'C28', 'G08', 'E16', '11-Nov-2015', 3, 'Child Proof', 'B');
insert into reservation values ('R90', 'C38', 'G19', 'E16', '16-Jan-2015', 6, 'Hendicaped', 'S');
insert into reservation values ('R91', 'C87', 'G12', 'E15', '02-Apr-2015', 5, 'Hendicaped', 'B');
insert into reservation values ('R92', 'C42', 'G21', 'E13', '14-Jan-2015', 6, 'Pets Allowed', 'P');
insert into reservation values ('R93', 'C35', 'G05', 'E10', '24-Jan-2015', 1, 'Quiet Floor', 'P');
insert into reservation values ('R94', 'C72', 'G13', 'E03', '05-May-2015', 4, 'Quiet Floor', 'B');
insert into reservation values ('R95', 'C02', 'G02', 'E05', '16-Jan-2016', 2, 'Pets Allowed', 'P');
insert into reservation values ('R96', 'C46', 'G14', 'E20', '17-Dec-2015', 1, 'Quiet Floor', 'B');
insert into reservation values ('R97', 'C73', 'G25', 'E03', '26-Dec-2015', 1, 'Vegeterian', 'S');
insert into reservation values ('R98', 'C52', 'G23', 'E06', '31-Aug-2015', 3, 'Pets Allowed', 'P');
insert into reservation values ('R99', 'C48', 'G06', 'E09', '14-Feb-2015', 6, 'Vegeterian', 'G');
insert into reservation values ('R100', 'C19', 'G11', 'E14', '23-Apr-2015', 3, 'Vegeterian', 'G');
insert into reservation values ('R101', 'C29', 'G22', 'E16', '30-Mar-2015', 5, 'None', 'S');
insert into reservation values ('R102', 'C12', 'G01', 'E20', '17-Jan-2016', 2, 'Child Proof', 'S');
insert into reservation values ('R103', 'C20', 'G11', 'E01', '08-Nov-2015', 2, 'Non Smoking', 'B');
insert into reservation values ('R104', 'C53', 'G23', 'E18', '07-Aug-2015', 2, 'Vegeterian', 'S');
insert into reservation values ('R105', 'C65', 'G03', 'E18', '12-Jan-2016', 6, 'Non Smoking', 'B');
insert into reservation values ('R106', 'C68', 'G09', 'E19', '02-Sep-2015', 1, 'Vegeterian', 'B');
insert into reservation values ('R107', 'C05', 'G17', 'E07', '15-Jun-2015', 5, 'Quiet Floor', 'S');
insert into reservation values ('R108', 'C52', 'G05', 'E19', '07-Jul-2015', 2, 'Pets Allowed', 'G');
insert into reservation values ('R109', 'C61', 'G01', 'E14', '09-Sep-2015', 4, 'Hendicaped', 'S');
insert into reservation values ('R110', 'C70', 'G09', 'E05', '22-Jul-2015', 6, 'Vegeterian', 'S');
insert into reservation values ('R111', 'C39', 'G01', 'E12', '16-Apr-2015', 6, 'Vegeterian', 'S');
insert into reservation values ('R112', 'C74', 'G16', 'E18', '03-Nov-2015', 5, 'Hendicaped', 'G');
insert into reservation values ('R113', 'C66', 'G05', 'E15', '15-Dec-2015', 3, 'Child Proof', 'B');
insert into reservation values ('R114', 'C50', 'G22', 'E02', '10-Nov-2015', 5, 'Child Proof', 'P');
insert into reservation values ('R115', 'C50', 'G04', 'E17', '30-Dec-2015', 4, 'Pets Allowed', 'B');
insert into reservation values ('R116', 'C87', 'G07', 'E20', '14-Sep-2015', 6, 'None', 'G');
insert into reservation values ('R117', 'C54', 'G23', 'E08', '15-Dec-2015', 1, 'None', 'B');
insert into reservation values ('R118', 'C73', 'G21', 'E19', '05-May-2015', 4, 'Pets Allowed', 'S');
insert into reservation values ('R119', 'C13', 'G19', 'E20', '10-Nov-2015', 5, 'Quiet Floor', 'G');
insert into reservation values ('R120', 'C16', 'G10', 'E06', '02-Apr-2015', 2, 'Pets Allowed', 'S');
insert into reservation values ('R121', 'C63', 'G24', 'E09', '23-Dec-2015', 1, 'Non Smoking', 'P');
insert into reservation values ('R122', 'C88', 'G13', 'E07', '21-Feb-2015', 3, 'Pets Allowed', 'S');
insert into reservation values ('R123', 'C99', 'G05', 'E13', '08-Sep-2015', 3, 'Pets Allowed', 'S');
insert into reservation values ('R124', 'C95', 'G25', 'E17', '15-Feb-2015', 5, 'None', 'S');
insert into reservation values ('R125', 'C57', 'G21', 'E08', '09-Nov-2015', 5, 'Child Proof', 'P');
insert into reservation values ('R126', 'C74', 'G05', 'E06', '27-Jan-2016', 2, 'Hendicaped', 'S');
insert into reservation values ('R127', 'C24', 'G21', 'E10', '06-Jan-2015', 4, 'Child Proof', 'G');
insert into reservation values ('R128', 'C13', 'G05', 'E13', '30-Nov-2015', 3, 'Non Smoking', 'S');
insert into reservation values ('R129', 'C67', 'G12', 'E03', '06-Jul-2015', 4, 'Vegeterian', 'P');
insert into reservation values ('R130', 'C95', 'G15', 'E13', '07-Dec-2015', 2, 'Child Proof', 'S');
insert into reservation values ('R131', 'C97', 'G17', 'E14', '25-Nov-2015', 5, 'Quiet Floor', 'S');
insert into reservation values ('R132', 'C70', 'G24', 'E15', '15-Jun-2015', 4, 'Child Proof', 'B');
insert into reservation values ('R133', 'C45', 'G12', 'E07', '27-Jun-2015', 5, 'Vegeterian', 'B');
insert into reservation values ('R134', 'C49', 'G09', 'E16', '08-Jun-2015', 3, 'Hendicaped', 'G');
insert into reservation values ('R135', 'C75', 'G18', 'E12', '21-Nov-2015', 3, 'Vegeterian', 'B');
insert into reservation values ('R136', 'C23', 'G08', 'E17', '09-Nov-2015', 1, 'Quiet Floor', 'P');
insert into reservation values ('R137', 'C14', 'G24', 'E03', '29-Apr-2015', 3, 'Vegeterian', 'P');
insert into reservation values ('R138', 'C13', 'G16', 'E01', '09-Jul-2015', 6, 'None', 'G');
insert into reservation values ('R139', 'C10', 'G17', 'E02', '14-Jan-2015', 1, 'None', 'S');
insert into reservation values ('R140', 'C35', 'G01', 'E20', '24-May-2015', 4, 'None', 'S');
insert into reservation values ('R141', 'C16', 'G18', 'E07', '14-Mar-2015', 2, 'Vegeterian', 'S');
insert into reservation values ('R142', 'C100', 'G13', 'E04', '19-Sep-2015', 5, 'Hendicaped', 'G');
insert into reservation values ('R143', 'C98', 'G04', 'E03', '22-May-2015', 3, 'Pets Allowed', 'S');
insert into reservation values ('R144', 'C29', 'G05', 'E18', '16-Jul-2015', 3, 'None', 'B');
insert into reservation values ('R145', 'C65', 'G25', 'E02', '14-May-2015', 4, 'Hendicaped', 'P');
insert into reservation values ('R146', 'C04', 'G12', 'E20', '12-Oct-2015', 6, 'Child Proof', 'G');
insert into reservation values ('R147', 'C31', 'G13', 'E05', '04-Jan-2015', 4, 'Child Proof', 'S');
insert into reservation values ('R148', 'C34', 'G10', 'E08', '30-Jan-2016', 1, 'Pets Allowed', 'G');
insert into reservation values ('R149', 'C94', 'G18', 'E10', '17-Aug-2015', 5, 'Quiet Floor', 'B');
insert into reservation values ('R150', 'C53', 'G01', 'E11', '22-Feb-2015', 6, 'Vegeterian', 'S');
insert into reservation values ('R151', 'C46', 'G01', 'E02', '10-Jan-2015', 3, 'None', 'G');
insert into reservation values ('R152', 'C39', 'G15', 'E03', '09-Sep-2015', 2, 'Vegeterian', 'P');
insert into reservation values ('R153', 'C06', 'G07', 'E17', '11-Nov-2015', 5, 'Hendicaped', 'G');
insert into reservation values ('R154', 'C58', 'G04', 'E01', '16-Aug-2015', 4, 'None', 'B');
insert into reservation values ('R155', 'C77', 'G19', 'E18', '03-Nov-2015', 6, 'Hendicaped', 'B');
insert into reservation values ('R156', 'C39', 'G09', 'E17', '05-Sep-2015', 5, 'Vegeterian', 'G');
insert into reservation values ('R157', 'C27', 'G21', 'E07', '04-Jul-2015', 6, 'None', 'G');
insert into reservation values ('R158', 'C62', 'G17', 'E02', '19-Jun-2015', 1, 'Non Smoking', 'G');
insert into reservation values ('R159', 'C01', 'G16', 'E17', '01-Jul-2015', 5, 'Hendicaped', 'S');
insert into reservation values ('R160', 'C87', 'G12', 'E02', '25-Feb-2015', 5, 'Child Proof', 'P');
insert into reservation values ('R161', 'C50', 'G23', 'E09', '22-Feb-2015', 5, 'Hendicaped', 'B');
insert into reservation values ('R162', 'C91', 'G24', 'E04', '21-Apr-2015', 6, 'Hendicaped', 'P');
insert into reservation values ('R163', 'C92', 'G07', 'E17', '27-Aug-2015', 2, 'Pets Allowed', 'S');
insert into reservation values ('R164', 'C44', 'G12', 'E12', '12-Nov-2015', 1, 'Child Proof', 'B');
insert into reservation values ('R165', 'C90', 'G19', 'E11', '02-Jan-2016', 5, 'Quiet Floor', 'P');
insert into reservation values ('R166', 'C03', 'G07', 'E06', '13-Jun-2015', 6, 'Hendicaped', 'P');
insert into reservation values ('R167', 'C67', 'G09', 'E17', '10-Aug-2015', 6, 'Child Proof', 'S');
insert into reservation values ('R168', 'C30', 'G03', 'E14', '12-Mar-2015', 1, 'Quiet Floor', 'S');
insert into reservation values ('R169', 'C32', 'G02', 'E06', '22-Jan-2015', 6, 'Child Proof', 'S');
insert into reservation values ('R170', 'C41', 'G11', 'E09', '08-May-2015', 3, 'Hendicaped', 'G');
insert into reservation values ('R171', 'C42', 'G04', 'E06', '06-Jan-2015', 4, 'None', 'G');
insert into reservation values ('R172', 'C72', 'G18', 'E20', '04-May-2015', 2, 'Quiet Floor', 'P');
insert into reservation values ('R173', 'C82', 'G09', 'E03', '28-Apr-2015', 3, 'Pets Allowed', 'B');
insert into reservation values ('R174', 'C78', 'G02', 'E19', '20-Mar-2015', 4, 'Vegeterian', 'G');
insert into reservation values ('R175', 'C75', 'G24', 'E18', '06-Jul-2015', 6, 'None', 'B');
insert into reservation values ('R176', 'C53', 'G24', 'E17', '13-Mar-2015', 4, 'Hendicaped', 'G');
insert into reservation values ('R177', 'C14', 'G10', 'E19', '24-Jul-2015', 2, 'Non Smoking', 'G');
insert into reservation values ('R178', 'C72', 'G10', 'E05', '24-Jun-2015', 6, 'Hendicaped', 'G');
insert into reservation values ('R179', 'C21', 'G17', 'E14', '02-Nov-2015', 2, 'Vegeterian', 'S');
insert into reservation values ('R180', 'C66', 'G04', 'E16', '29-Mar-2015', 5, 'Non Smoking', 'P');
insert into reservation values ('R181', 'C26', 'G20', 'E07', '03-Mar-2015', 4, 'Quiet Floor', 'B');
insert into reservation values ('R182', 'C14', 'G12', 'E01', '01-Mar-2015', 3, 'Hendicaped', 'P');
insert into reservation values ('R183', 'C79', 'G08', 'E20', '21-Aug-2015', 3, 'None', 'S');
insert into reservation values ('R184', 'C62', 'G20', 'E20', '21-Nov-2015', 4, 'Hendicaped', 'B');
insert into reservation values ('R185', 'C82', 'G13', 'E06', '15-Oct-2015', 5, 'None', 'P');
insert into reservation values ('R186', 'C75', 'G23', 'E04', '05-Sep-2015', 3, 'Quiet Floor', 'G');
insert into reservation values ('R187', 'C45', 'G12', 'E13', '24-Dec-2015', 6, 'Child Proof', 'S');
insert into reservation values ('R188', 'C99', 'G04', 'E18', '23-Nov-2015', 1, 'None', 'B');
insert into reservation values ('R189', 'C70', 'G11', 'E12', '12-May-2015', 4, 'Quiet Floor', 'B');
insert into reservation values ('R190', 'C62', 'G04', 'E17', '14-Dec-2015', 2, 'Hendicaped', 'B');
insert into reservation values ('R191', 'C60', 'G18', 'E11', '07-Aug-2015', 1, 'Hendicaped', 'S');
insert into reservation values ('R192', 'C92', 'G15', 'E13', '11-Jan-2015', 4, 'Child Proof', 'B');
insert into reservation values ('R193', 'C47', 'G15', 'E08', '26-Feb-2015', 6, 'Quiet Floor', 'P');
insert into reservation values ('R194', 'C63', 'G06', 'E04', '15-Feb-2015', 2, 'None', 'S');
insert into reservation values ('R195', 'C58', 'G08', 'E02', '25-Sep-2015', 4, 'Quiet Floor', 'G');
insert into reservation values ('R196', 'C66', 'G08', 'E11', '24-Sep-2015', 6, 'None', 'S');
insert into reservation values ('R197', 'C90', 'G23', 'E13', '27-Dec-2015', 6, 'Pets Allowed', 'B');
insert into reservation values ('R198', 'C100', 'G01', 'E16', '09-Apr-2015', 4, 'Non Smoking', 'B');
insert into reservation values ('R199', 'C22', 'G15', 'E19', '13-Apr-2015', 1, 'Pets Allowed', 'S');
insert into reservation values ('R200', 'C01', 'G15', 'E13', '20-Jan-2016', 5, 'Hendicaped', 'S');
insert into reservation values ('R201', 'C46', 'G19', 'E13', '06-Jul-2015', 6, 'Hendicaped', 'G');
insert into reservation values ('R202', 'C77', 'G24', 'E07', '06-Jun-2015', 5, 'Non Smoking', 'P');
insert into reservation values ('R203', 'C27', 'G10', 'E04', '28-Aug-2015', 3, 'Non Smoking', 'G');
insert into reservation values ('R204', 'C87', 'G12', 'E03', '14-Aug-2015', 4, 'Hendicaped', 'B');
insert into reservation values ('R205', 'C83', 'G05', 'E09', '01-Apr-2015', 2, 'Quiet Floor', 'B');
insert into reservation values ('R206', 'C30', 'G08', 'E15', '29-May-2015', 1, 'Quiet Floor', 'S');
insert into reservation values ('R207', 'C96', 'G16', 'E02', '04-Dec-2015', 5, 'Non Smoking', 'P');
insert into reservation values ('R208', 'C71', 'G06', 'E20', '02-Feb-2015', 2, 'Non Smoking', 'S');
insert into reservation values ('R209', 'C40', 'G16', 'E11', '22-Sep-2015', 2, 'Vegeterian', 'P');
insert into reservation values ('R210', 'C80', 'G22', 'E01', '23-Mar-2015', 6, 'Vegeterian', 'G');
insert into reservation values ('R211', 'C45', 'G23', 'E07', '04-Jul-2015', 6, 'Vegeterian', 'G');
insert into reservation values ('R212', 'C08', 'G20', 'E08', '12-Aug-2015', 1, 'Pets Allowed', 'G');
insert into reservation values ('R213', 'C74', 'G09', 'E05', '06-Dec-2015', 4, 'Non Smoking', 'P');
insert into reservation values ('R214', 'C79', 'G09', 'E13', '02-Sep-2015', 3, 'None', 'P');
insert into reservation values ('R215', 'C37', 'G21', 'E19', '17-Oct-2015', 3, 'Vegeterian', 'G');
insert into reservation values ('R216', 'C11', 'G08', 'E02', '15-Jan-2015', 4, 'None', 'G');
insert into reservation values ('R217', 'C15', 'G24', 'E01', '08-Jan-2016', 2, 'None', 'P');
insert into reservation values ('R218', 'C62', 'G25', 'E19', '31-Jul-2015', 3, 'Non Smoking', 'S');
insert into reservation values ('R219', 'C29', 'G14', 'E05', '19-Apr-2015', 3, 'Pets Allowed', 'G');
insert into reservation values ('R220', 'C100', 'G16', 'E05', '14-Jan-2016', 1, 'Child Proof', 'P');
insert into reservation values ('R221', 'C12', 'G21', 'E09', '11-Sep-2015', 2, 'Pets Allowed', 'B');
insert into reservation values ('R222', 'C98', 'G23', 'E15', '22-Aug-2015', 1, 'None', 'B');
insert into reservation values ('R223', 'C24', 'G09', 'E16', '02-Aug-2015', 6, 'Quiet Floor', 'P');
insert into reservation values ('R224', 'C54', 'G21', 'E10', '26-Oct-2015', 2, 'Pets Allowed', 'B');
insert into reservation values ('R225', 'C83', 'G19', 'E04', '25-Oct-2015', 1, 'Pets Allowed', 'G');
insert into reservation values ('R226', 'C38', 'G18', 'E18', '03-Sep-2015', 5, 'Vegeterian', 'S');
insert into reservation values ('R227', 'C21', 'G02', 'E15', '30-Apr-2015', 1, 'Non Smoking', 'G');
insert into reservation values ('R228', 'C59', 'G15', 'E17', '29-Apr-2015', 4, 'None', 'G');
insert into reservation values ('R229', 'C69', 'G06', 'E18', '15-Sep-2015', 3, 'Child Proof', 'P');
insert into reservation values ('R230', 'C65', 'G22', 'E11', '05-Mar-2015', 1, 'Pets Allowed', 'P');
insert into reservation values ('R231', 'C64', 'G17', 'E05', '07-Mar-2015', 2, 'Non Smoking', 'B');
insert into reservation values ('R232', 'C59', 'G24', 'E20', '15-Jun-2015', 2, 'Child Proof', 'P');
insert into reservation values ('R233', 'C80', 'G07', 'E08', '13-Nov-2015', 4, 'Hendicaped', 'S');
insert into reservation values ('R234', 'C47', 'G12', 'E20', '12-Jan-2016', 3, 'Vegeterian', 'S');
insert into reservation values ('R235', 'C90', 'G16', 'E01', '26-Jan-2015', 1, 'Pets Allowed', 'G');
insert into reservation values ('R236', 'C06', 'G14', 'E14', '04-Jun-2015', 4, 'Hendicaped', 'S');
insert into reservation values ('R237', 'C46', 'G13', 'E09', '31-Mar-2015', 2, 'Pets Allowed', 'S');
insert into reservation values ('R238', 'C82', 'G11', 'E17', '22-Jun-2015', 2, 'Non Smoking', 'S');
insert into reservation values ('R239', 'C85', 'G13', 'E20', '28-Oct-2015', 6, 'Hendicaped', 'S');
insert into reservation values ('R240', 'C08', 'G06', 'E13', '27-Jun-2015', 6, 'None', 'S');
insert into reservation values ('R241', 'C67', 'G01', 'E03', '19-Jan-2015', 2, 'Quiet Floor', 'G');
insert into reservation values ('R242', 'C53', 'G04', 'E14', '15-Apr-2015', 1, 'Vegeterian', 'G');
insert into reservation values ('R243', 'C28', 'G12', 'E11', '13-May-2015', 5, 'Child Proof', 'P');
insert into reservation values ('R244', 'C85', 'G15', 'E10', '22-Apr-2015', 2, 'Quiet Floor', 'S');
insert into reservation values ('R245', 'C65', 'G18', 'E07', '09-Jan-2016', 1, 'Non Smoking', 'P');
insert into reservation values ('R246', 'C75', 'G25', 'E12', '07-Nov-2015', 3, 'Vegeterian', 'P');
insert into reservation values ('R247', 'C44', 'G20', 'E03', '09-Oct-2015', 2, 'Quiet Floor', 'B');
insert into reservation values ('R248', 'C10', 'G10', 'E15', '28-Jul-2015', 3, 'Pets Allowed', 'B');
insert into reservation values ('R249', 'C31', 'G21', 'E07', '03-Oct-2015', 4, 'None', 'G');
insert into reservation values ('R250', 'C46', 'G19', 'E12', '06-Aug-2015', 5, 'Pets Allowed', 'B');
insert into reservation values ('R251', 'C52', 'G06', 'E18', '23-Feb-2015', 5, 'Non Smoking', 'G');
insert into reservation values ('R252', 'C68', 'G03', 'E02', '19-Apr-2015', 1, 'Child Proof', 'G');
insert into reservation values ('R253', 'C76', 'G08', 'E03', '11-Sep-2015', 6, 'Vegeterian', 'P');
insert into reservation values ('R254', 'C96', 'G06', 'E02', '20-Nov-2015', 4, 'Hendicaped', 'G');
insert into reservation values ('R255', 'C20', 'G19', 'E18', '23-Sep-2015', 2, 'Vegeterian', 'B');
insert into reservation values ('R256', 'C98', 'G10', 'E18', '15-Aug-2015', 5, 'Vegeterian', 'B');
insert into reservation values ('R257', 'C83', 'G16', 'E03', '24-Mar-2015', 4, 'Pets Allowed', 'G');
insert into reservation values ('R258', 'C40', 'G15', 'E11', '19-Jan-2015', 5, 'Non Smoking', 'B');
insert into reservation values ('R259', 'C06', 'G19', 'E20', '15-Oct-2015', 1, 'Non Smoking', 'G');
insert into reservation values ('R260', 'C50', 'G17', 'E16', '30-Dec-2015', 2, 'Non Smoking', 'G');
insert into reservation values ('R261', 'C53', 'G24', 'E10', '07-Jun-2015', 4, 'Quiet Floor', 'S');
insert into reservation values ('R262', 'C23', 'G02', 'E16', '07-Jun-2015', 3, 'Hendicaped', 'B');
insert into reservation values ('R263', 'C18', 'G21', 'E18', '29-Jul-2015', 4, 'Vegeterian', 'P');
insert into reservation values ('R264', 'C31', 'G13', 'E19', '31-Oct-2015', 5, 'Non Smoking', 'S');
insert into reservation values ('R265', 'C59', 'G20', 'E16', '25-Apr-2015', 2, 'Pets Allowed', 'G');
insert into reservation values ('R266', 'C75', 'G06', 'E14', '05-Apr-2015', 3, 'Quiet Floor', 'B');
insert into reservation values ('R267', 'C56', 'G03', 'E01', '09-Sep-2015', 5, 'Vegeterian', 'P');
insert into reservation values ('R268', 'C53', 'G05', 'E19', '08-Jan-2015', 4, 'Non Smoking', 'B');
insert into reservation values ('R269', 'C94', 'G13', 'E08', '03-Aug-2015', 2, 'Quiet Floor', 'G');
insert into reservation values ('R270', 'C57', 'G18', 'E10', '10-Sep-2015', 2, 'Quiet Floor', 'G');
insert into reservation values ('R271', 'C68', 'G19', 'E18', '21-Jun-2015', 6, 'Hendicaped', 'G');
insert into reservation values ('R272', 'C90', 'G06', 'E18', '30-Jul-2015', 3, 'Hendicaped', 'S');
insert into reservation values ('R273', 'C20', 'G19', 'E19', '21-Dec-2015', 6, 'Pets Allowed', 'B');
insert into reservation values ('R274', 'C15', 'G12', 'E09', '10-Dec-2015', 5, 'Child Proof', 'G');
insert into reservation values ('R275', 'C95', 'G15', 'E09', '07-Sep-2015', 2, 'Quiet Floor', 'P');
insert into reservation values ('R276', 'C22', 'G20', 'E06', '03-Sep-2015', 3, 'Quiet Floor', 'B');
insert into reservation values ('R277', 'C23', 'G03', 'E20', '19-Sep-2015', 3, 'Hendicaped', 'S');
insert into reservation values ('R278', 'C25', 'G14', 'E04', '23-Dec-2015', 2, 'None', 'P');
insert into reservation values ('R279', 'C26', 'G12', 'E17', '03-Nov-2015', 4, 'Non Smoking', 'S');
insert into reservation values ('R280', 'C85', 'G07', 'E03', '04-Aug-2015', 4, 'Vegeterian', 'S');
insert into reservation values ('R281', 'C54', 'G09', 'E09', '04-Apr-2015', 1, 'Non Smoking', 'G');
insert into reservation values ('R282', 'C49', 'G09', 'E08', '31-Dec-2015', 4, 'Hendicaped', 'P');
insert into reservation values ('R283', 'C42', 'G21', 'E17', '17-Oct-2015', 2, 'Vegeterian', 'S');
insert into reservation values ('R284', 'C27', 'G19', 'E15', '11-Jan-2015', 3, 'Quiet Floor', 'P');
insert into reservation values ('R285', 'C89', 'G04', 'E18', '20-Aug-2015', 6, 'None', 'B');
insert into reservation values ('R286', 'C80', 'G08', 'E02', '15-Nov-2015', 2, 'Pets Allowed', 'S');
insert into reservation values ('R287', 'C71', 'G05', 'E03', '21-Mar-2015', 3, 'None', 'S');
insert into reservation values ('R288', 'C49', 'G15', 'E03', '17-Oct-2015', 4, 'Vegeterian', 'G');
insert into reservation values ('R289', 'C71', 'G14', 'E08', '30-Oct-2015', 5, 'Vegeterian', 'B');
insert into reservation values ('R290', 'C93', 'G05', 'E08', '10-Sep-2015', 1, 'None', 'G');
insert into reservation values ('R291', 'C37', 'G16', 'E03', '23-Mar-2015', 4, 'Vegeterian', 'P');
insert into reservation values ('R292', 'C64', 'G20', 'E11', '08-Nov-2015', 2, 'None', 'B');
insert into reservation values ('R293', 'C66', 'G08', 'E15', '06-Jun-2015', 4, 'Hendicaped', 'B');
insert into reservation values ('R294', 'C98', 'G21', 'E16', '24-Mar-2015', 6, 'Pets Allowed', 'P');
insert into reservation values ('R295', 'C09', 'G09', 'E05', '27-Aug-2015', 3, 'None', 'P');
insert into reservation values ('R296', 'C40', 'G13', 'E16', '17-Apr-2015', 3, 'Vegeterian', 'B');
insert into reservation values ('R297', 'C08', 'G16', 'E02', '17-Mar-2015', 1, 'Non Smoking', 'G');
insert into reservation values ('R298', 'C86', 'G13', 'E13', '20-Jul-2015', 1, 'Quiet Floor', 'G');
insert into reservation values ('R299', 'C50', 'G03', 'E10', '15-Aug-2015', 4, 'Child Proof', 'G');
insert into reservation values ('R300', 'C54', 'G17', 'E02', '07-Oct-2015', 1, 'Vegeterian', 'B');

insert into packet values ('B', 'Basic', 150, 'N', 0);
insert into packet values ('S', 'Silver', 200, 'N', 0);
insert into packet values ('G', 'Gold', 300, 'Y', 100);
insert into packet values ('P', 'Platinum', 400, 'Y', 150);

insert into guide values ('G01', 'Mr. Roxanne Miller', 'F', 1107, '21-May-2011');
insert into guide values ('G02', 'Ms. Lester Wise', 'M', 780, '03-Jul-2007');
insert into guide values ('G03', 'Ms. Tuan Hoff', 'M', 955, '09-Apr-2006');
insert into guide values ('G04', 'Mr. Maryln Humphrey', 'F', 1329, '04-May-2011');
insert into guide values ('G05', 'Ms. Chung Kenny', 'M', 947, '11-Nov-2011');
insert into guide values ('G06', 'Mr. Temika Irvin', 'F', 1446, '10-Apr-2012');
insert into guide values ('G07', 'Mr. Antigone Rosenberg', 'F', 1424, '03-Feb-2007');
insert into guide values ('G08', 'Ms. Carlos Sheppard', 'M', 1322, '06-Feb-2006');
insert into guide values ('G09', 'Ms. Miles Alexander', 'M', 793, '03-Mar-2009');
insert into guide values ('G10', 'Mr. Estrella Laurel', 'F', 1335, '13-Apr-2011');
insert into guide values ('G11', 'Mr. Nyla Davis', 'F', 1405, '31-Jul-2007');
insert into guide values ('G12', 'Ms. Filobedo Purcell', 'M', 1301, '26-Jun-2008');
insert into guide values ('G13', 'Mr. Hsiu Cunningham', 'F', 1289, '29-Jun-2014');
insert into guide values ('G14', 'Mr. Arnita Clement', 'F', 1222, '19-Feb-2011');
insert into guide values ('G15', 'Mr. Tomoko Kincaid', 'F', 919, '08-May-2014');
insert into guide values ('G16', 'Mr. Veronique Akins', 'F', 1290, '09-Jan-2015');
insert into guide values ('G17', 'Ms. Oliver Han', 'M', 955, '14-Apr-2014');
insert into guide values ('G18', 'Mr. Veronica Kilgore', 'F', 1131, '17-May-2008');
insert into guide values ('G19', 'Mr. Pei Duncan', 'F', 1494, '10-Nov-2013');
insert into guide values ('G20', 'Ms. Denis Hargrove', 'M', 1312, '05-Mar-2012');
insert into guide values ('G21', 'Ms. Jonas Alston', 'M', 1318, '01-Mar-2015');
insert into guide values ('G22', 'Mr. Geralyn Olivares', 'F', 1085, '12-Aug-2009');
insert into guide values ('G23', 'Ms. Andrew Martin', 'M', 899, '20-Sep-2012');
insert into guide values ('G24', 'Ms. Irvin Bataille', 'M', 1391, '22-Jul-2006');
insert into guide values ('G25', 'Ms. Dash Harding', 'M', 898, '29-Aug-2013');

insert into customer values ('C01', 'Mr. Crissy Xiong', 'F', 'B', 'North West', '12 Knight Park', '696/981 6776');
insert into customer values ('C02', 'Ms. Benito Trotter', 'M', 'B', 'South East', '71 Montagna Lane', '691/856 9417');
insert into customer values ('C03', 'Ms. Korey Kent', 'M', 'G', 'South West', '154 Palmer Square', '690/306 6360');
insert into customer values ('C04', 'Ms. Percival Burbaki', 'M', 'B', 'North East', '165 Geiger Street', '696/909 1211');
insert into customer values ('C05', 'Ms. Nicky Samuels', 'M', 'B', 'West', '321 Cleveland Avenue', '697/197 9370');
insert into customer values ('C06', 'Mr. Sue Bloom', 'F', 'P', 'North West', '17 Vaughan Square', '692/320 9372');
insert into customer values ('C07', 'Mr. Gail Farley', 'F', 'S', 'West', '314 Dahl Street', '696/852 1435');
insert into customer values ('C08', 'Mr. Lang Simms', 'F', 'N', 'North', '274 Webber Place', '697/154 6964');
insert into customer values ('C09', 'Mr. Shira Joyner', 'F', 'G', 'South', '453 Uribe Street', '691/273 7075');
insert into customer values ('C10', 'Mr. Judy Montalban', 'F', 'G', 'North East', '24 Eaton Square', '696/667 9388');
insert into customer values ('C11', 'Ms. Mikel Cheng', 'M', 'N', 'South West', '83 Raver Square', '692/467 2654');
insert into customer values ('C12', 'Ms. Michael Hebert', 'M', 'S', 'West', '370 Strickland Park', '695/418 1961');
insert into customer values ('C13', 'Mr. Ocie Becker', 'F', 'G', 'North', '208 Morgan Street', '695/371 2585');
insert into customer values ('C14', 'Ms. Weldon Shultz', 'M', 'P', 'North West', '127 Saldana Place', '693/106 4741');
insert into customer values ('C15', 'Mr. Natalia Beal', 'F', 'S', 'East', '250 Bass Square', '692/708 3781');
insert into customer values ('C16', 'Mr. Yvonne Mullihan', 'F', 'B', 'North East', '137 Dover Lane', '694/338 4609');
insert into customer values ('C17', 'Mr. Cherrie Sears', 'F', 'G', 'North East', '428 Jonasson Avenue', '695/959 4359');
insert into customer values ('C18', 'Ms. Chauncey Serrano', 'M', 'P', 'West', '218 Dominico Avenue', '696/515 6596');
insert into customer values ('C19', 'Ms. Edwardo Webster', 'M', 'P', 'North East', '268 Sherwood Avenue', '695/167 6595');
insert into customer values ('C20', 'Mr. Shandra Misirlis', 'F', 'S', 'North', '233 Prado Park', '695/646 6459');
insert into customer values ('C21', 'Mr. Linda Gillet', 'F', 'S', 'North West', '240 Guinsburg Square', '692/663 4123');
insert into customer values ('C22', 'Ms. Emery Mora', 'M', 'P', 'North', '285 Milton Park', '691/690 1512');
insert into customer values ('C23', 'Mr. Hester Chappell', 'F', 'G', 'West', '6 Rhoades Park', '694/316 7393');
insert into customer values ('C24', 'Ms. Marquis Keegan', 'M', 'B', 'South East', '41 Estes Lane', '695/118 3701');
insert into customer values ('C25', 'Ms. Jed Yeager', 'M', 'B', 'North West', '313 Swartz Street', '696/315 8368');
insert into customer values ('C26', 'Ms. Bradford Gregory', 'M', 'P', 'North East', '172 Mckinley Square', '692/401 9935');
insert into customer values ('C27', 'Ms. Alec Bunch', 'M', 'B', 'South East', '494 Carr Lane', '690/563 1484');
insert into customer values ('C28', 'Mr. Nyla Viren', 'F', 'B', 'West', '425 Chung Place', '690/527 1664');
insert into customer values ('C29', 'Ms. Christoper Jacob', 'M', 'G', 'South', '104 Cruise Street', '695/708 6849');
insert into customer values ('C30', 'Ms. Avery Pryor', 'M', 'N', 'South East', '321 Hathaway Avenue', '691/837 9705');
insert into customer values ('C31', 'Mr. Natalia Huff', 'F', 'B', 'East', '178 Orioli Park', '697/495 5696');
insert into customer values ('C32', 'Ms. Clint Burrell', 'M', 'P', 'East', '472 Schaefer Square', '697/791 1320');
insert into customer values ('C33', 'Ms. Benedict Lugo', 'M', 'B', 'North West', '110 Mckee Street', '693/341 4089');
insert into customer values ('C34', 'Mr. Alina Owens', 'F', 'G', 'North', '27 Rankin Lane', '690/556 3549');
insert into customer values ('C35', 'Mr. Vernia Levy', 'F', 'N', 'South East', '167 Laurel Avenue', '693/336 8872');
insert into customer values ('C36', 'Mr. Queen Corcoran', 'F', 'N', 'North East', '246 Delaney Place', '696/122 3782');
insert into customer values ('C37', 'Ms. Bryce Shafer', 'M', 'S', 'North', '117 Wittgenstein Street', '694/370 5875');
insert into customer values ('C38', 'Ms. Eli Baird', 'M', 'B', 'North West', '189 Carmichael Park', '690/438 5589');
insert into customer values ('C39', 'Ms. Garrett Gonzales', 'M', 'B', 'North West', '486 Tipton Street', '695/489 3368');
insert into customer values ('C40', 'Ms. Ryan Moser', 'M', 'P', 'North West', '40 Marceau Place', '697/278 5801');
insert into customer values ('C41', 'Ms. Christoper Pack', 'M', 'G', 'South', '447 Carrasco Place', '697/562 5761');
insert into customer values ('C42', 'Ms. Efrain Coreolano', 'M', 'N', 'South East', '53 Alfaro Street', '690/532 9834');
insert into customer values ('C43', 'Mr. Selina Shaffer', 'F', 'S', 'East', '322 Melendez Lane', '691/192 7559');
insert into customer values ('C44', 'Ms. Francis Akyurek', 'M', 'S', 'North East', '120 Tompkins Square', '692/614 4270');
insert into customer values ('C45', 'Mr. Dorothea Hahnemann', 'F', 'G', 'North West', '216 Bray Avenue', '693/638 7565');
insert into customer values ('C46', 'Ms. Jason Cooke', 'M', 'P', 'South East', '470 Caballero Place', '698/508 3684');
insert into customer values ('C47', 'Ms. Vern Russ', 'M', 'G', 'South East', '277 Cathcart Lane', '697/666 7333');
insert into customer values ('C48', 'Ms. Garry Mason', 'M', 'N', 'West', '482 Calhoun Place', '695/328 9723');
insert into customer values ('C49', 'Mr. Hilma Sosa', 'F', 'S', 'North East', '76 Walters Park', '694/729 2872');
insert into customer values ('C50', 'Ms. Samual Mckee', 'M', 'P', 'North', '140 Lockheed Park', '691/108 8432');
insert into customer values ('C51', 'Mr. Annamaria Hatcher', 'F', 'G', 'West', '117 Alford Square', '694/164 5596');
insert into customer values ('C52', 'Mr. Marina Briggs', 'F', 'P', 'West', '96 Caballero Street', '690/715 5835');
insert into customer values ('C53', 'Mr. Simone Rosario', 'F', 'G', 'South East', '468 Zimmer Square', '697/923 2531');
insert into customer values ('C54', 'Mr. Trinian Navarro', 'F', 'B', 'East', '368 Diamond Park', '696/490 2760');
insert into customer values ('C55', 'Ms. Dashiel Hodges', 'M', 'S', 'South East', '21 Granger Square', '696/722 8767');
insert into customer values ('C56', 'Mr. Queen Colon', 'F', 'B', 'South', '160 Meyer Lane', '694/213 7920');
insert into customer values ('C57', 'Ms. Rodney Babcock', 'M', 'N', 'South', '373 Scott Avenue', '690/817 5160');
insert into customer values ('C58', 'Mr. Ena Laurel', 'F', 'S', 'South', '308 Lacey Square', '697/187 8240');
insert into customer values ('C59', 'Mr. Glenda Aguilera', 'F', 'P', 'East', '334 Macdonald Place', '694/508 4284');
insert into customer values ('C60', 'Ms. Pepito Wall', 'M', 'S', 'South West', '348 Laurel Place', '694/258 4434');
insert into customer values ('C61', 'Mr. Domitila Berman', 'F', 'G', 'South East', '61 Duarte Street', '694/864 1638');
insert into customer values ('C62', 'Mr. Drusilla Baez', 'F', 'G', 'North West', '215 Batiste Place', '699/949 3836');
insert into customer values ('C63', 'Mr. Greta Dunbar', 'F', 'B', 'West', '313 Devine Lane', '693/575 1097');
insert into customer values ('C64', 'Ms. Anthony Barron', 'M', 'P', 'North East', '60 Leigh Place', '699/329 6474');
insert into customer values ('C65', 'Ms. Fred Walls', 'M', 'N', 'East', '340 Carpenter Park', '694/127 6613');
insert into customer values ('C66', 'Mr. Lenora Hepburn', 'F', 'P', 'East', '197 Prado Square', '694/998 2401');
insert into customer values ('C67', 'Ms. William Britton', 'M', 'S', 'South East', '382 Cabrera Park', '696/806 7174');
insert into customer values ('C68', 'Mr. Tiana Binder', 'F', 'G', 'South', '174 Puckett Avenue', '699/203 7275');
insert into customer values ('C69', 'Ms. Albert Walton', 'M', 'P', 'East', '309 Caper Street', '695/324 8998');
insert into customer values ('C70', 'Ms. Ezra Lacey', 'M', 'S', 'North', '464 Tapia Street', '694/876 1181');
insert into customer values ('C71', 'Ms. Chauncey Dominguez', 'M', 'N', 'South West', '375 Livingston Square', '696/369 6997');
insert into customer values ('C72', 'Ms. Will Bloomingdale', 'M', 'S', 'South East', '293 Mortimer Square', '698/400 4716');
insert into customer values ('C73', 'Mr. Lorie Gucci', 'F', 'B', 'South', '104 Liu Place', '698/883 3471');
insert into customer values ('C74', 'Mr. Holley Bryan', 'F', 'N', 'North', '77 Wiseman Street', '690/295 4311');
insert into customer values ('C75', 'Mr. Joeann Panucci', 'F', 'B', 'South West', '294 Rochelle Street', '697/864 2066');
insert into customer values ('C76', 'Mr. Nicholle Pauley', 'F', 'S', 'North West', '498 Hammond Lane', '696/836 5814');
insert into customer values ('C77', 'Mr. Sue Denison', 'F', 'G', 'South', '152 Travis Lane', '692/290 3975');
insert into customer values ('C78', 'Ms. Graham Gustavson', 'M', 'S', 'North West', '197 Hedrick Street', '691/388 9316');
insert into customer values ('C79', 'Ms. Kurt Champion', 'M', 'B', 'South East', '53 Melton Park', '693/474 6394');
insert into customer values ('C80', 'Mr. Angle Dotson', 'F', 'G', 'North West', '95 Connolly Park', '690/372 4229');
insert into customer values ('C81', 'Mr. Marhta Hollander', 'F', 'P', 'East', '418 Ogden Place', '695/137 3221');
insert into customer values ('C82', 'Mr. Grayce Caskill', 'F', 'P', 'North East', '339 Brantley Lane', '696/556 2613');
insert into customer values ('C83', 'Ms. Sylvester Roper', 'M', 'P', 'East', '229 Pavlov Avenue', '698/714 6012');
insert into customer values ('C84', 'Ms. Wilber Kay', 'M', 'N', 'South West', '369 Figueroa Place', '695/865 2758');
insert into customer values ('C85', 'Ms. Fidelio Read', 'M', 'N', 'South East', '156 Bourne Park', '692/176 4182');
insert into customer values ('C86', 'Mr. Jennifer Alexander', 'F', 'G', 'North East', '118 Dang Park', '692/724 9009');
insert into customer values ('C87', 'Ms. Enoch Hobbs', 'M', 'G', 'North', '316 Hales Square', '696/583 8464');
insert into customer values ('C88', 'Ms. Julius Tran', 'M', 'B', 'East', '329 Darby Street', '699/418 8844');
insert into customer values ('C89', 'Ms. Tony Sinclair', 'M', 'S', 'North', '158 Marymount Lane', '694/564 6601');
insert into customer values ('C90', 'Ms. Waylon Evans', 'M', 'S', 'North East', '1 Schultz Lane', '695/884 6202');
insert into customer values ('C91', 'Ms. Benny Coates', 'M', 'P', 'South West', '469 Mcrae Avenue', '690/613 2311');
insert into customer values ('C92', 'Mr. Margarette Chang', 'F', 'B', 'North East', '461 Rock Street', '690/126 3065');
insert into customer values ('C93', 'Ms. Dwain Davies', 'M', 'P', 'South', '8 Meade Square', '692/518 2483');
insert into customer values ('C94', 'Mr. Tona Ashby', 'F', 'S', 'North East', '57 Wainwright Place', '691/651 1281');
insert into customer values ('C95', 'Ms. Wilton Jackman', 'M', 'G', 'South East', '260 Sjoblom Place', '697/616 6631');
insert into customer values ('C96', 'Mr. Adriene Granados', 'F', 'S', 'East', '479 Brantley Avenue', '690/934 6644');
insert into customer values ('C97', 'Mr. Merry Strickland', 'F', 'S', 'West', '326 Fernandez Lane', '693/564 7600');
insert into customer values ('C98', 'Ms. Joshua Hendricks', 'M', 'B', 'East', '205 Richards Lane', '694/609 8223');
insert into customer values ('C99', 'Ms. Edwin Nixon', 'M', 'S', 'East', '423 Tang Street', '699/141 3516');
insert into customer values ('C100', 'Mr. Dorothea Cook', 'F', 'N', 'West', '72 Forman Avenue', '699/479 4941');

insert into membership values ('N', 'N', 'None', 0);
insert into membership values ('B', 'Y', 'Basic', 10);
insert into membership values ('S', 'Y', 'Silver', 15);
insert into membership values ('G', 'Y', 'Gold', 20);
insert into membership values ('P', 'Y', 'Platinum', 25);

insert into excursion values ('E01', '24-Jan-2017', '01-Feb-2017', 'L09', 'AC05', 'T02');
insert into excursion values ('E02', '10-May-2016', '26-May-2016', 'L11', 'AC01', 'T04');
insert into excursion values ('E03', '25-Dec-2016', '23-Jan-2017', 'L18', 'AC01', 'T02');
insert into excursion values ('E04', '21-Jul-2016', '16-Aug-2016', 'L20', 'AC04', 'T02');
insert into excursion values ('E05', '12-Oct-2016', '07-Nov-2016', 'L11', 'AC04', 'T05');
insert into excursion values ('E06', '26-Jun-2016', '19-Jul-2016', 'L01', 'AC07', 'T05');
insert into excursion values ('E07', '20-Jun-2016', '15-Jul-2016', 'L13', 'AC07', 'T06');
insert into excursion values ('E08', '20-Oct-2016', '03-Nov-2016', 'L18', 'AC06', 'T06');
insert into excursion values ('E09', '29-Jan-2017', '22-Feb-2017', 'L03', 'AC02', 'T05');
insert into excursion values ('E10', '11-Aug-2016', '01-Sep-2016', 'L19', 'AC07', 'T03');
insert into excursion values ('E11', '21-Jun-2016', '26-Jun-2016', 'L21', 'AC02', 'T06');
insert into excursion values ('E12', '08-Nov-2016', '07-Dec-2016', 'L12', 'AC07', 'T04');
insert into excursion values ('E13', '21-Feb-2016', '06-Mar-2016', 'L15', 'AC05', 'T06');
insert into excursion values ('E14', '07-Nov-2016', '01-Dec-2016', 'L15', 'AC04', 'T06');
insert into excursion values ('E15', '16-Jun-2016', '09-Jul-2016', 'L19', 'AC01', 'T06');
insert into excursion values ('E16', '27-Jul-2016', '05-Aug-2016', 'L20', 'AC02', 'T06');
insert into excursion values ('E17', '27-Dec-2016', '07-Jan-2017', 'L08', 'AC07', 'T06');
insert into excursion values ('E18', '08-Oct-2016', '03-Nov-2016', 'L22', 'AC04', 'T06');
insert into excursion values ('E19', '01-Jun-2016', '01-Jul-2016', 'L03', 'AC03', 'T06');
insert into excursion values ('E20', '05-Nov-2016', '20-Nov-2016', 'L06', 'AC01', 'T02');

insert into transport values ('T01', 'Bus', 377);
insert into transport values ('T02', 'Train', 213);
insert into transport values ('T03', 'Mini Van', 293);
insert into transport values ('T04', 'Boat', 309);
insert into transport values ('T05', 'Car', 227);
insert into transport values ('T06', 'Airplane', 486);

insert into location values ('L01', 'Aruba', 'Tropical', 362);
insert into location values ('L02', 'Jamaica', 'Tropical', 301);
insert into location values ('L03', 'Bahama', 'Tropical', 316);
insert into location values ('L04', 'Bermuda', 'Tropical', 263);
insert into location values ('L05', 'Keylargo', 'Tropical', 345);
insert into location values ('L06', 'Montego', 'Tropical', 312);
insert into location values ('L07', 'Goa', 'Tropical', 435);
insert into location values ('L08', 'Vermont', 'Rural', 432);
insert into location values ('L09', 'Tuscany', 'Rural', 446);
insert into location values ('L10', 'Asturias', 'Rural', 367);
insert into location values ('L11', 'France Province', 'Rural', 471);
insert into location values ('L12', 'Rome', 'Urban', 388);
insert into location values ('L13', 'Paris', 'Urban', 460);
insert into location values ('L14', 'London', 'Urban', 462);
insert into location values ('L15', 'Berlin', 'Urban', 465);
insert into location values ('L16', 'Sydney', 'Urban', 258);
insert into location values ('L17', 'Belgrade', 'Urban', 473);
insert into location values ('L18', 'New York', 'Urban', 424);
insert into location values ('L19', 'Aspen', 'Mountain', 342);
insert into location values ('L20', 'Kopaonik', 'Mountain', 206);
insert into location values ('L21', 'Swiss Alps', 'Mountain', 465);
insert into location values ('L22', 'French Alps', 'Mountain', 416);
insert into location values ('L23', 'Kilimanjaro', 'Mountain', 240);

insert into arrangement values ('AC01', 'None', 0);
insert into arrangement values ('AC02', 'Motel', 254);
insert into arrangement values ('AC03', 'Holdiay Inn', 243);
insert into arrangement values ('AC04', 'Homestay', 89);
insert into arrangement values ('AC05', 'Hotel', 172);
insert into arrangement values ('AC06', 'Spa', 176);
insert into arrangement values ('AC07', 'Resort', 199);


alter table reservation
add CONSTRAINT reservation_guide_fk FOREIGN KEY (guide_id) REFERENCES guide (guide_id);

alter table reservation
add CONSTRAINT reservation_excursion_fk FOREIGN KEY (excursion_id) REFERENCES excursion (excursion_id);

alter table reservation
add CONSTRAINT reservation_packet_fk FOREIGN KEY (packet_id) REFERENCES packet (packet_id);

alter table reservation
add CONSTRAINT reservation_customer_fk FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

alter table customer
add CONSTRAINT customer_membership_fk FOREIGN KEY (membership_id) REFERENCES membership (membership_id);

alter table excursion
add CONSTRAINT excursion_location_fk FOREIGN KEY (location_id) REFERENCES location (location_id);

alter table excursion
add CONSTRAINT excursion_transport_fk FOREIGN KEY (transport_id) REFERENCES transport (transport_id);

alter table excursion
add CONSTRAINT excursion_arrangement_fk FOREIGN KEY (arrangement_id) REFERENCES arrangement (arrangement_id);




