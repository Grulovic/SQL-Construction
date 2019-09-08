DROP TABLE construction;

CREATE TABLE construction (
	EMP_ID	        VARCHAR2(8),
    NAME	        VARCHAR2(50),
    ADDRESS	        VARCHAR2(50),
    HIRE_DATE	    Date,
    ABSENCES	    VARCHAR2(20),
    PHONE_#	        VARCHAR2(20),
    JOB_ID	        VARCHAR2(3),
    JOB_DESCP	    VARCHAR2(25),
    HOURLY_PAY	    Number,
    PROJ_ID	        VARCHAR2(5),
    PROJ_TYPE	    VARCHAR2(25),
    DATE_STARTED	date,
    REGION	        VARCHAR2(4),
    MAN_HOURS       Number
);

insert into construction values ('Emp-038', 'Ms. Beaver Alice', '106, Cash Park', '17-Apr-2006', 'Rarely', '698/528 8751', 'CM', 'Construction manager', 20, 'P_01', 'Civil and Infrastructure', '11-Jun-2010', 'R02', 718);
insert into construction values ('Emp-002', 'Ms. Samuels Gena', '300, Chappell Street', '12-May-2003', 'Almost never', '694/644 2913', 'CM', 'Construction manager', 20, 'P_03', 'Commercial Construction', '30-May-2011', 'R05', 468);
insert into construction values ('Emp-003', 'Ms. Samuels Gena', '283, Kessler Avenue', '14-Nov-2003', 'Always', '696/128 2520', 'CE', 'Construction engineer', 15, 'P_12', 'Commercial Construction', '11-Mar-2011', 'R04', 318);
insert into construction values ('Emp-004', 'Mr. Hanley Heron', '374, Vincent Park', '13-Sep-2006', 'Never', '694/663 8216', 'PM', 'Project manager', 11, 'P_06', 'Commercial Construction', '22-Jan-2013', 'R04', 438);
insert into construction values ('Emp-005', 'Ms. Ewing Karren', '374, Vincent Park', '13-Feb-2007', 'Never', '693/269 7028', 'DM', 'Design manager', 6, 'P_09', 'Landscaping', '16-Nov-2012', 'R06', 728);
insert into construction values ('Emp-006', 'Ms. Donovan Matha', '433, Whitney Street', '13-Feb-2007', 'Frequently', '697/315 1787', 'A', 'Architect', 21, 'P_05', 'Commercial Construction', '08-May-2010', 'R05', 443);
insert into construction values ('Emp-007', 'Ms. Riddle Donnetta', '256, Rich Park', '24-May-2014', 'Never', '692/102 9157', 'CM', 'Construction manager', 20, 'P_04', 'Landscaping', '16-Nov-2012', 'R04', 497);
insert into construction values ('Emp-008', 'Mr. Oconnell Johnathon', '310, Terrell Street', '28-Oct-2009', 'Frequently', '691/757 4707', 'A', 'Architect', 21, 'P_03', 'Commercial Construction', '11-Mar-2011', 'R05', 744);
insert into construction values ('Emp-009', 'Mr. Oconnell Johnathon', '108, Choate Square', '10-Sep-2011', 'Never', '691/765 9837', 'CW', 'Construction worker', 5, 'P_13', 'Landscaping', '15-Jan-2012', 'R03', 271);
insert into construction values ('Emp-010', 'Ms. Pennington Billie', '418, Lord Avenue', '28-Jul-2005', 'Never', '695/630 1650', 'DM', 'Design manager', 6, 'P_02', 'Civil and Infrastructure', '22-Jan-2013', 'R02', 506);
insert into construction values ('Emp-011', 'Ms. Mcfadden Natisha', '201, Payton Street', '10-Jul-2010', 'Frequently', '691/104 9052', 'CM', 'Construction manager', 20, 'P_10', 'Commercial Construction', '10-Aug-2012', 'R03', 439);
insert into construction values ('Emp-012', 'Ms. Kemp Eva', '58, Marin Avenue', '10-Sep-2011', 'Rarely', '693/583 5994', 'A', 'Architect', 21, 'P_05', 'Commercial Construction', '13-Mar-2012', 'R05', 468);
insert into construction values ('Emp-013', 'Ms. Timmons Ammie', '488, Drexel Lane', '19-Mar-2013', 'Sometimes', '691/765 9837', 'CW', 'Construction worker', 5, 'P_03', 'Commercial Construction', '10-Sep-2012', 'R05', 651);
insert into construction values ('Emp-014', 'Ms. Chong Claudia', '336, Croft Place', '25-May-2006', 'Rarely', '699/906 6337', 'DM', 'Design manager', 6, 'P_06', 'Commercial Construction', '11-Jun-2010', 'R04', 380);
insert into construction values ('Emp-015', 'Mr. Bernard Zbig', '224, Rojas Place', '14-Nov-2003', 'Never', '696/648 9430', 'CW', 'Construction worker', 5, 'P_10', 'Commercial Construction', '12-Jul-2012', 'R03', 550);
insert into construction values ('Emp-016', 'Mr. Ramey Max', '147, Haines Park', '04-Aug-2014', 'Almost never', '694/100 9670', 'A', 'Architect', 21, 'P_04', 'Landscaping', '08-May-2010', 'R04', 550);
insert into construction values ('Emp-017', 'Ms. Pierce Farah', '433, Whitney Street', '11-Apr-2007', 'Sometimes', '693/262 4020', 'CE', 'Construction engineer', 15, 'P_08', 'Commercial Construction', '15-Jan-2012', 'R05', 503);
insert into construction values ('Emp-018', 'Mr. Ramos Vzevolod', '95, Tillman Park', '13-Sep-2006', 'Never', '694/644 2913', 'DM', 'Design manager', 6, 'P_09', 'Landscaping', '08-May-2010', 'R06', 256);
insert into construction values ('Emp-019', 'Ms. Beaver Alice', '285, Coon Lane', '28-Apr-2003', 'Almost always', '695/630 1650', 'PM', 'Project manager', 11, 'P_08', 'Commercial Construction', '11-Mar-2011', 'R05', 257);
insert into construction values ('Emp-020', 'Ms. Mays Harriet', '108, Choate Square', '28-Oct-2009', 'Always', '694/159 2141', 'DM', 'Design manager', 6, 'P_06', 'Commercial Construction', '17-Mar-2012', 'R04', 466);
insert into construction values ('Emp-021', 'Ms. Mcfadden Natisha', '58, Marin Avenue', '08-Mar-2009', 'Always', '694/644 2913', 'A', 'Architect', 21, 'P_02', 'Civil and Infrastructure', '15-Jan-2012', 'R02', 662);
insert into construction values ('Emp-022', 'Mr. Joseph Freddy', '248, Drexler Place', '10-Sep-2011', 'Almost never', '693/662 3697', 'CW', 'Construction worker', 5, 'P_03', 'Commercial Construction', '10-Sep-2012', 'R05', 356);
insert into construction values ('Emp-023', 'Mr. Bernard Zbig', '115, Mcbride Place', '19-Mar-2013', 'Always', '690/511 5185', 'DM', 'Design manager', 6, 'P_08', 'Commercial Construction', '12-Jul-2012', 'R05', 331);
insert into construction values ('Emp-024', 'Ms. Rock Jasmine', '430, Lanier Lane', '10-Oct-2006', 'Almost never', '690/137 1152', 'CW', 'Construction worker', 5, 'P_02', 'Civil and Infrastructure', '16-Nov-2012', 'R02', 457);
insert into construction values ('Emp-025', 'Ms. Rock Jasmine', '433, Whitney Street', '21-Dec-2003', 'Rarely', '698/512 1384', 'CW', 'Construction worker', 5, 'P_01', 'Civil and Infrastructure', '08-May-2010', 'R02', 428);
insert into construction values ('Emp-026', 'Mr. Oconnell Johnathon', '28, Nava Place', '17-Apr-2006', 'Sometimes', '696/405 7560', 'A', 'Architect', 21, 'P_10', 'Commercial Construction', '08-May-2010', 'R03', 595);
insert into construction values ('Emp-027', 'Mr. Oconnell Johnathon', '374, Vincent Park', '13-Sep-2006', 'Frequently', '696/128 2520', 'CW', 'Construction worker', 5, 'P_07', 'Landscaping', '08-May-2010', 'R02', 286);
insert into construction values ('Emp-028', 'Ms. Ewing Karren', '213, Mobley Place', '28-Jul-2005', 'Almost never', '696/128 2520', 'PM', 'Project manager', 11, 'P_01', 'Civil and Infrastructure', '17-Mar-2012', 'R02', 374);
insert into construction values ('Emp-029', 'Mr. Slater Joshua', '195, Elmsford Street', '26-Jan-2004', 'Almost always', '694/413 2337', 'CW', 'Construction worker', 5, 'P_11', 'Landscaping', '16-Nov-2012', 'R04', 639);
insert into construction values ('Emp-030', 'Mr. Campbell Horace', '248, Drexler Place', '17-Apr-2006', 'Frequently', '698/706 8355', 'CW', 'Construction worker', 5, 'P_06', 'Commercial Construction', '12-Jul-2012', 'R04', 737);
insert into construction values ('Emp-031', 'Ms. Timmons Ammie', '310, Parker Place', '28-Oct-2009', 'Never', '696/217 9838', 'PM', 'Project manager', 11, 'P_15', 'Civil and Infrastructure', '06-Jan-2011', 'R01', 556);
insert into construction values ('Emp-032', 'Ms. Ziegler Tish', '393, Ferguson Square', '23-Apr-2013', 'Never', '693/662 3697', 'CW', 'Construction worker', 5, 'P_09', 'Landscaping', '30-May-2011', 'R06', 623);
insert into construction values ('Emp-033', 'Mr. Meadows Reiner', '256, Popper Park', '04-Apr-2006', 'Frequently', '693/194 5475', 'DM', 'Design manager', 6, 'P_10', 'Commercial Construction', '30-May-2011', 'R03', 558);
insert into construction values ('Emp-034', 'Mr. Joseph Freddy', '224, Rojas Place', '22-Jan-2007', 'Rarely', '695/843 7238', 'CE', 'Construction engineer', 15, 'P_15', 'Civil and Infrastructure', '10-Sep-2012', 'R01', 270);
insert into construction values ('Emp-035', 'Ms. Mcclellan Bridgett', '283, Kessler Avenue', '21-Apr-2003', 'Never', '698/706 8355', 'CW', 'Construction worker', 5, 'P_05', 'Commercial Construction', '12-Jul-2012', 'R05', 371);
insert into construction values ('Emp-036', 'Mr. Herzog Dewitt', '201, Payton Street', '17-Apr-2012', 'Always', '691/757 4707', 'DM', 'Design manager', 6, 'P_02', 'Civil and Infrastructure', '23-Mar-2010', 'R02', 502);
insert into construction values ('Emp-037', 'Mr. Joseph Freddy', '256, Popper Park', '26-Oct-2007', 'Sometimes', '691/104 9052', 'CE', 'Construction engineer', 15, 'P_11', 'Landscaping', '15-Jan-2012', 'R04', 501);
insert into construction values ('Emp-038', 'Mr. Shirley Jerrell', '430, Lanier Lane', '30-Mar-2010', 'Sometimes', '695/630 1650', 'PM', 'Project manager', 11, 'P_01', 'Civil and Infrastructure', '22-Jan-2013', 'R02', 265);
insert into construction values ('Emp-039', 'Mr. Chavez Bob', '256, Rich Park', '08-Mar-2009', 'Almost never', '696/405 7560', 'PM', 'Project manager', 11, 'P_06', 'Commercial Construction', '11-Jun-2010', 'R04', 623);
insert into construction values ('Emp-040', 'Mr. Robison Adolph', '115, Mcbride Place', '21-Apr-2003', 'Almost always', '699/348 3981', 'CE', 'Construction engineer', 15, 'P_11', 'Landscaping', '02-Aug-2014', 'R04', 358);
insert into construction values ('Emp-041', 'Ms. Rosa Jennifer', '430, Lanier Lane', '27-Jul-2007', 'Almost never', '698/512 1384', 'CW', 'Construction worker', 5, 'P_10', 'Commercial Construction', '23-Mar-2010', 'R03', 333);
insert into construction values ('Emp-042', 'Ms. Mcfadden Natisha', '40, Omalley Square', '02-Apr-2009', 'Always', '692/102 9157', 'PM', 'Project manager', 11, 'P_08', 'Commercial Construction', '06-Jan-2011', 'R05', 284);
insert into construction values ('Emp-043', 'Mr. Ramos Vzevolod', '308, Nicholson Place', '04-Aug-2014', 'Sometimes', '693/583 5994', 'CW', 'Construction worker', 5, 'P_03', 'Commercial Construction', '11-Jun-2010', 'R05', 683);
insert into construction values ('Emp-044', 'Ms. Rock Jasmine', '58, Marin Avenue', '19-Jun-2006', 'Never', '694/100 9670', 'A', 'Architect', 21, 'P_02', 'Civil and Infrastructure', '30-May-2011', 'R02', 539);
insert into construction values ('Emp-045', 'Ms. Angel Alesia', '336, Croft Place', '24-May-2014', 'Sometimes', '696/405 7560', 'A', 'Architect', 21, 'P_15', 'Civil and Infrastructure', '10-Aug-2012', 'R01', 471);
insert into construction values ('Emp-046', 'Ms. Chong Claudia', '336, Croft Place', '18-Nov-2011', 'Always', '699/348 3981', 'CM', 'Construction manager', 20, 'P_03', 'Commercial Construction', '17-Mar-2012', 'R05', 519);
insert into construction values ('Emp-047', 'Ms. Beach Josefa', '106, Cash Park', '04-Apr-2006', 'Sometimes', '696/268 7881', 'DM', 'Design manager', 6, 'P_07', 'Landscaping', '23-Mar-2010', 'R02', 660);
insert into construction values ('Emp-048', 'Ms. Newman Terese', '108, Choate Square', '11-Apr-2007', 'Sometimes', '696/128 2520', 'A', 'Architect', 21, 'P_11', 'Landscaping', '10-Aug-2012', 'R04', 326);
insert into construction values ('Emp-049', 'Mr. Briggs Ike', '40, Omalley Square', '19-Jun-2006', 'Never', '697/124 2118', 'CE', 'Construction engineer', 15, 'P_01', 'Civil and Infrastructure', '08-May-2010', 'R02', 391);
insert into construction values ('Emp-050', 'Mr. Campbell Horace', '423, Ventura Lane', '26-Jan-2004', 'Sometimes', '695/630 1650', 'A', 'Architect', 21, 'P_09', 'Landscaping', '08-May-2010', 'R06', 416);