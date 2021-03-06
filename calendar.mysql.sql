/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE `christian_west_source` (
	`DAY` DATE NULL,
	`EVENT` VARCHAR(13) NOT NULL COLLATE 'utf8mb4_general_ci',
	`calendar` VARCHAR(19) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

CREATE TABLE `day_input` (
	`day` DATE NULL
) ENGINE=MyISAM;

CREATE TABLE `day_source` (
	`day` DATE NULL,
	`year` INT(4) NULL
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `easter_west_input` (
  `day` date NOT NULL DEFAULT '2000-01-01',
  KEY `PK` (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='From http://tlarsen2.tripod.com/thomaslarsen/easterdates.html';

/*!40000 ALTER TABLE `easter_west_input` DISABLE KEYS */;
INSERT INTO `easter_west_input` (`day`) VALUES
	('1700-04-11'),
	('1701-03-27'),
	('1702-04-16'),
	('1703-04-08'),
	('1704-03-23'),
	('1705-04-12'),
	('1706-04-04'),
	('1707-04-24'),
	('1708-04-08'),
	('1709-03-31'),
	('1710-04-20'),
	('1711-04-05'),
	('1712-03-27'),
	('1713-04-16'),
	('1714-04-01'),
	('1715-04-21'),
	('1716-04-12'),
	('1717-03-28'),
	('1718-04-17'),
	('1719-04-09'),
	('1720-03-31'),
	('1721-04-13'),
	('1722-04-05'),
	('1723-03-28'),
	('1724-04-16'),
	('1725-04-01'),
	('1726-04-21'),
	('1727-04-13'),
	('1728-03-28'),
	('1729-04-17'),
	('1730-04-09'),
	('1731-03-25'),
	('1732-04-13'),
	('1733-04-05'),
	('1734-04-25'),
	('1735-04-10'),
	('1736-04-01'),
	('1737-04-21'),
	('1738-04-06'),
	('1739-03-29'),
	('1740-04-17'),
	('1741-04-02'),
	('1742-03-25'),
	('1743-04-14'),
	('1744-04-05'),
	('1745-04-18'),
	('1746-04-10'),
	('1747-04-02'),
	('1748-04-14'),
	('1749-04-06'),
	('1750-03-29'),
	('1751-04-11'),
	('1752-04-02'),
	('1753-04-22'),
	('1754-04-14'),
	('1755-03-30'),
	('1756-04-18'),
	('1757-04-10'),
	('1758-03-26'),
	('1759-04-15'),
	('1760-04-06'),
	('1761-03-22'),
	('1762-04-11'),
	('1763-04-03'),
	('1764-04-22'),
	('1765-04-07'),
	('1766-03-30'),
	('1767-04-19'),
	('1768-04-03'),
	('1769-03-26'),
	('1770-04-15'),
	('1771-03-31'),
	('1772-04-19'),
	('1773-04-11'),
	('1774-04-03'),
	('1775-04-16'),
	('1776-04-07'),
	('1777-03-30'),
	('1778-04-19'),
	('1779-04-04'),
	('1780-03-26'),
	('1781-04-15'),
	('1782-03-31'),
	('1783-04-20'),
	('1784-04-11'),
	('1785-03-27'),
	('1786-04-16'),
	('1787-04-08'),
	('1788-03-23'),
	('1789-04-12'),
	('1790-04-04'),
	('1791-04-24'),
	('1792-04-08'),
	('1793-03-31'),
	('1794-04-20'),
	('1795-04-05'),
	('1796-03-27'),
	('1797-04-16'),
	('1798-04-08'),
	('1799-03-24'),
	('1800-04-13'),
	('1801-04-05'),
	('1802-04-18'),
	('1803-04-10'),
	('1804-04-01'),
	('1805-04-14'),
	('1806-04-06'),
	('1807-03-29'),
	('1808-04-17'),
	('1809-04-02'),
	('1810-04-22'),
	('1811-04-14'),
	('1812-03-29'),
	('1813-04-18'),
	('1814-04-10'),
	('1815-03-26'),
	('1816-04-14'),
	('1817-04-06'),
	('1818-03-22'),
	('1819-04-11'),
	('1820-04-02'),
	('1821-04-22'),
	('1822-04-07'),
	('1823-03-30'),
	('1824-04-18'),
	('1825-04-03'),
	('1826-03-26'),
	('1827-04-15'),
	('1828-04-06'),
	('1829-04-19'),
	('1830-04-11'),
	('1831-04-03'),
	('1832-04-22'),
	('1833-04-07'),
	('1834-03-30'),
	('1835-04-19'),
	('1836-04-03'),
	('1837-03-26'),
	('1838-04-15'),
	('1839-03-31'),
	('1840-04-19'),
	('1841-04-11'),
	('1842-03-27'),
	('1843-04-16'),
	('1844-04-07'),
	('1845-03-23'),
	('1846-04-12'),
	('1847-04-04'),
	('1848-04-23'),
	('1849-04-08'),
	('1850-03-31'),
	('1851-04-20'),
	('1852-04-11'),
	('1853-03-27'),
	('1854-04-16'),
	('1855-04-08'),
	('1856-03-23'),
	('1857-04-12'),
	('1858-04-04'),
	('1859-04-24'),
	('1860-04-08'),
	('1861-03-31'),
	('1862-04-20'),
	('1863-04-05'),
	('1864-03-27'),
	('1865-04-16'),
	('1866-04-01'),
	('1867-04-21'),
	('1868-04-12'),
	('1869-03-28'),
	('1870-04-17'),
	('1871-04-09'),
	('1872-03-31'),
	('1873-04-13'),
	('1874-04-05'),
	('1875-03-28'),
	('1876-04-16'),
	('1877-04-01'),
	('1878-04-21'),
	('1879-04-13'),
	('1880-03-28'),
	('1881-04-17'),
	('1882-04-09'),
	('1883-03-25'),
	('1884-04-13'),
	('1885-04-05'),
	('1886-04-25'),
	('1887-04-10'),
	('1888-04-01'),
	('1889-04-21'),
	('1890-04-06'),
	('1891-03-29'),
	('1892-04-17'),
	('1893-04-02'),
	('1894-03-25'),
	('1895-04-14'),
	('1896-04-05'),
	('1897-04-18'),
	('1898-04-10'),
	('1899-04-02'),
	('1900-04-15'),
	('1901-04-07'),
	('1902-03-30'),
	('1903-04-12'),
	('1904-04-03'),
	('1905-04-23'),
	('1906-04-15'),
	('1907-03-31'),
	('1908-04-19'),
	('1909-04-11'),
	('1910-03-27'),
	('1911-04-16'),
	('1912-04-07'),
	('1913-03-23'),
	('1914-04-12'),
	('1915-04-04'),
	('1916-04-23'),
	('1917-04-08'),
	('1918-03-31'),
	('1919-04-20'),
	('1920-04-04'),
	('1921-03-27'),
	('1922-04-16'),
	('1923-04-01'),
	('1924-04-20'),
	('1925-04-12'),
	('1926-04-04'),
	('1927-04-17'),
	('1928-04-08'),
	('1929-03-31'),
	('1930-04-20'),
	('1931-04-05'),
	('1932-03-27'),
	('1933-04-16'),
	('1934-04-01'),
	('1935-04-21'),
	('1936-04-12'),
	('1937-03-28'),
	('1938-04-17'),
	('1939-04-09'),
	('1940-03-24'),
	('1941-04-13'),
	('1942-04-05'),
	('1943-04-25'),
	('1944-04-09'),
	('1945-04-01'),
	('1946-04-21'),
	('1947-04-06'),
	('1948-03-28'),
	('1949-04-17'),
	('1950-04-09'),
	('1951-03-25'),
	('1952-04-13'),
	('1953-04-05'),
	('1954-04-18'),
	('1955-04-10'),
	('1956-04-01'),
	('1957-04-21'),
	('1958-04-06'),
	('1959-03-29'),
	('1960-04-17'),
	('1961-04-02'),
	('1962-04-22'),
	('1963-04-14'),
	('1964-03-29'),
	('1965-04-18'),
	('1966-04-10'),
	('1967-03-26'),
	('1968-04-14'),
	('1969-04-06'),
	('1970-03-29'),
	('1971-04-11'),
	('1972-04-02'),
	('1973-04-22'),
	('1974-04-14'),
	('1975-03-30'),
	('1976-04-18'),
	('1977-04-10'),
	('1978-03-26'),
	('1979-04-15'),
	('1980-04-06'),
	('1981-04-19'),
	('1982-04-11'),
	('1983-04-03'),
	('1984-04-22'),
	('1985-04-07'),
	('1986-03-30'),
	('1987-04-19'),
	('1988-04-03'),
	('1989-03-26'),
	('1990-04-15'),
	('1991-03-31'),
	('1992-04-19'),
	('1993-04-11'),
	('1994-04-03'),
	('1995-04-16'),
	('1996-04-07'),
	('1997-03-30'),
	('1998-04-12'),
	('1999-04-04'),
	('2000-04-23'),
	('2001-04-15'),
	('2002-03-31'),
	('2003-04-20'),
	('2004-04-11'),
	('2005-03-27'),
	('2006-04-16'),
	('2007-04-08'),
	('2008-03-23'),
	('2009-04-12'),
	('2010-04-04'),
	('2011-04-24'),
	('2012-04-08'),
	('2013-03-31'),
	('2014-04-20'),
	('2015-04-05'),
	('2016-03-27'),
	('2017-04-16'),
	('2018-04-01'),
	('2019-04-21'),
	('2020-04-12'),
	('2021-04-04'),
	('2022-04-17'),
	('2023-04-09'),
	('2024-03-31'),
	('2025-04-20'),
	('2026-04-05'),
	('2027-03-28'),
	('2028-04-16'),
	('2029-04-01'),
	('2030-04-21'),
	('2031-04-13'),
	('2032-03-28'),
	('2033-04-17'),
	('2034-04-09'),
	('2035-03-25'),
	('2036-04-13'),
	('2037-04-05'),
	('2038-04-25'),
	('2039-04-10'),
	('2040-04-01'),
	('2041-04-21'),
	('2042-04-06'),
	('2043-03-29'),
	('2044-04-17'),
	('2045-04-09'),
	('2046-03-25'),
	('2047-04-14'),
	('2048-04-05'),
	('2049-04-18'),
	('2050-04-10'),
	('2051-04-02'),
	('2052-04-21'),
	('2053-04-06'),
	('2054-03-29'),
	('2055-04-18'),
	('2056-04-02'),
	('2057-04-22'),
	('2058-04-14'),
	('2059-03-30'),
	('2060-04-18'),
	('2061-04-10'),
	('2062-03-26'),
	('2063-04-15'),
	('2064-04-06'),
	('2065-03-29'),
	('2066-04-11'),
	('2067-04-03'),
	('2068-04-22'),
	('2069-04-14'),
	('2070-03-30'),
	('2071-04-19'),
	('2072-04-10'),
	('2073-03-26'),
	('2074-04-15'),
	('2075-04-07'),
	('2076-04-19'),
	('2077-04-11'),
	('2078-04-03'),
	('2079-04-23'),
	('2080-04-07'),
	('2081-03-30'),
	('2082-04-19'),
	('2083-04-04'),
	('2084-03-26'),
	('2085-04-15'),
	('2086-03-31'),
	('2087-04-20'),
	('2088-04-11'),
	('2089-04-03'),
	('2090-04-16'),
	('2091-04-08'),
	('2092-03-30'),
	('2093-04-12'),
	('2094-04-04'),
	('2095-04-24'),
	('2096-04-15'),
	('2097-03-31'),
	('2098-04-20'),
	('2099-04-12'),
	('2100-03-28'),
	('2101-04-17'),
	('2102-04-09'),
	('2103-03-25'),
	('2104-04-13'),
	('2105-04-05'),
	('2106-04-18'),
	('2107-04-10'),
	('2108-04-01'),
	('2109-04-21'),
	('2110-04-06'),
	('2111-03-29'),
	('2112-04-17'),
	('2113-04-02'),
	('2114-04-22'),
	('2115-04-14'),
	('2116-03-29'),
	('2117-04-18'),
	('2118-04-10'),
	('2119-03-26'),
	('2120-04-14'),
	('2121-04-06'),
	('2122-03-29'),
	('2123-04-11'),
	('2124-04-02'),
	('2125-04-22'),
	('2126-04-14'),
	('2127-03-30'),
	('2128-04-18'),
	('2129-04-10'),
	('2130-03-26'),
	('2131-04-15'),
	('2132-04-06'),
	('2133-04-19'),
	('2134-04-11'),
	('2135-04-03'),
	('2136-04-22'),
	('2137-04-07'),
	('2138-03-30'),
	('2139-04-19'),
	('2140-04-03'),
	('2141-03-26'),
	('2142-04-15'),
	('2143-03-31'),
	('2144-04-19'),
	('2145-04-11'),
	('2146-04-03'),
	('2147-04-16'),
	('2148-04-07'),
	('2149-03-30'),
	('2150-04-12'),
	('2151-04-04'),
	('2152-04-23'),
	('2153-04-15'),
	('2154-03-31'),
	('2155-04-20'),
	('2156-04-11'),
	('2157-03-27'),
	('2158-04-16'),
	('2159-04-08'),
	('2160-03-23'),
	('2161-04-12'),
	('2162-04-04'),
	('2163-04-24'),
	('2164-04-08'),
	('2165-03-31'),
	('2166-04-20'),
	('2167-04-05'),
	('2168-03-27'),
	('2169-04-16'),
	('2170-04-01'),
	('2171-04-21'),
	('2172-04-12'),
	('2173-04-04'),
	('2174-04-17'),
	('2175-04-09'),
	('2176-03-31'),
	('2177-04-20'),
	('2178-04-05'),
	('2179-03-28'),
	('2180-04-16'),
	('2181-04-01'),
	('2182-04-21'),
	('2183-04-13'),
	('2184-03-28'),
	('2185-04-17'),
	('2186-04-09'),
	('2187-03-25'),
	('2188-04-13'),
	('2189-04-05'),
	('2190-04-25'),
	('2191-04-10'),
	('2192-04-01'),
	('2193-04-21'),
	('2194-04-06'),
	('2195-03-29'),
	('2196-04-17'),
	('2197-04-09'),
	('2198-03-25'),
	('2199-04-14'),
	('2200-04-06'),
	('2201-04-19'),
	('2202-04-11'),
	('2203-04-03'),
	('2204-04-22'),
	('2205-04-07'),
	('2206-03-30'),
	('2207-04-19'),
	('2208-04-03');
INSERT INTO `easter_west_input` (`day`) VALUES
	('2209-03-26'),
	('2210-04-15'),
	('2211-03-31'),
	('2212-04-19'),
	('2213-04-11'),
	('2214-03-27'),
	('2215-04-16'),
	('2216-04-07'),
	('2217-03-30'),
	('2218-04-12'),
	('2219-04-04'),
	('2220-04-23'),
	('2221-04-15'),
	('2222-03-31'),
	('2223-04-20'),
	('2224-04-11'),
	('2225-03-27'),
	('2226-04-16'),
	('2227-04-08'),
	('2228-03-23'),
	('2229-04-12'),
	('2230-04-04'),
	('2231-04-24'),
	('2232-04-08'),
	('2233-03-31'),
	('2234-04-20'),
	('2235-04-05'),
	('2236-03-27'),
	('2237-04-16'),
	('2238-04-01'),
	('2239-04-21'),
	('2240-04-12'),
	('2241-04-04'),
	('2242-04-17'),
	('2243-04-09'),
	('2244-03-31'),
	('2245-04-13'),
	('2246-04-05'),
	('2247-03-28'),
	('2248-04-16'),
	('2249-04-01'),
	('2250-04-21'),
	('2251-04-13'),
	('2252-03-28'),
	('2253-04-17'),
	('2254-04-09'),
	('2255-03-25'),
	('2256-04-13'),
	('2257-04-05'),
	('2258-04-25'),
	('2259-04-10'),
	('2260-04-01'),
	('2261-04-21'),
	('2262-04-06'),
	('2263-03-29'),
	('2264-04-17'),
	('2265-04-02'),
	('2266-03-25'),
	('2267-04-14'),
	('2268-04-05'),
	('2269-04-18'),
	('2270-04-10'),
	('2271-04-02'),
	('2272-04-21'),
	('2273-04-06'),
	('2274-03-29'),
	('2275-04-18'),
	('2276-04-02'),
	('2277-04-22'),
	('2278-04-14'),
	('2279-03-30'),
	('2280-04-18'),
	('2281-04-10'),
	('2282-03-26'),
	('2283-04-15'),
	('2284-04-06'),
	('2285-03-22'),
	('2286-04-11'),
	('2287-04-03'),
	('2288-04-22'),
	('2289-04-07'),
	('2290-03-30'),
	('2291-04-19'),
	('2292-04-10'),
	('2293-03-26'),
	('2294-04-15'),
	('2295-04-07'),
	('2296-04-19'),
	('2297-04-11'),
	('2298-04-03'),
	('2299-04-16');
/*!40000 ALTER TABLE `easter_west_input` ENABLE KEYS */;

DELIMITER //
CREATE FUNCTION `FIRST_DAYOFWEEK_OF`(datestamp DATETIME, dayofweek INT) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'first weekday of a month, where dayofweek: 1=sunday, 2=monday, etc'
RETURN TRUNC_DAYOFWEEK((LAST_DAY(datestamp) + INTERVAL 1 DAY - INTERVAL 1 MONTH + INTERVAL 6 DAY), dayofweek)//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `FIRST_MONDAY_OF`(datestamp DATETIME) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'first monday of the month'
RETURN FIRST_DAYOFWEEK_OF(datestamp, 2)//
DELIMITER ;

CREATE TABLE `holiday_source` (
	`day` DATE NULL,
	`year` INT(4) NULL,
	`event` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`calendar` VARCHAR(19) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS `jewish_input` (
  `day` date NOT NULL,
  `event` varchar(50) CHARACTER SET latin1 NOT NULL,
  KEY `Index 1` (`day`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='LIcensed from hebcal.com acording to Creative Commons 3.0 Attribution';

/*!40000 ALTER TABLE `jewish_input` DISABLE KEYS */;
INSERT INTO `jewish_input` (`day`, `event`) VALUES
	('2019-03-20', 'Erev Purim'),
	('2019-03-21', 'Purim'),
	('2019-04-19', 'Erev Pesach'),
	('2019-04-20', 'Pesach I'),
	('2019-04-21', 'Pesach II'),
	('2019-04-22', 'Pesach III (CH\'\'M)'),
	('2019-04-23', 'Pesach IV (CH\'\'M)'),
	('2019-04-24', 'Pesach V (CH\'\'M)'),
	('2019-04-25', 'Pesach VI (CH\'\'M)'),
	('2019-04-26', 'Pesach VII'),
	('2019-04-27', 'Pesach VIII'),
	('2019-06-08', 'Erev Shavuot'),
	('2019-06-09', 'Shavuot I'),
	('2019-06-10', 'Shavuot II'),
	('2019-08-10', 'Erev Tish\'a B\'Av'),
	('2019-08-11', 'Tish\'a B\'Av'),
	('2019-09-29', 'Erev Rosh Hashana'),
	('2019-09-30', 'Rosh Hashana 5780'),
	('2019-10-01', 'Rosh Hashana II'),
	('2019-10-08', 'Erev Yom Kippur'),
	('2019-10-09', 'Yom Kippur'),
	('2019-10-13', 'Erev Sukkot'),
	('2019-10-14', 'Sukkot I'),
	('2019-10-15', 'Sukkot II'),
	('2019-10-16', 'Sukkot III (CH\'\'M)'),
	('2019-10-17', 'Sukkot IV (CH\'\'M)'),
	('2019-10-18', 'Sukkot V (CH\'\'M)'),
	('2019-10-19', 'Sukkot VI (CH\'\'M)'),
	('2019-10-20', 'Sukkot VII (Hoshana Raba)'),
	('2019-10-21', 'Shmini Atzeret'),
	('2019-10-22', 'Simchat Torah'),
	('2019-12-22', 'Chanukah: 1 Candle'),
	('2019-12-23', 'Chanukah: 2 Candles'),
	('2019-12-24', 'Chanukah: 3 Candles'),
	('2019-12-25', 'Chanukah: 4 Candles'),
	('2019-12-26', 'Chanukah: 5 Candles'),
	('2019-12-27', 'Chanukah: 6 Candles'),
	('2019-12-28', 'Chanukah: 7 Candles'),
	('2019-12-29', 'Chanukah: 8 Candles'),
	('2019-12-30', 'Chanukah: 8th Day'),
	('2020-03-09', 'Erev Purim'),
	('2020-03-10', 'Purim'),
	('2020-04-08', 'Erev Pesach'),
	('2020-04-09', 'Pesach I'),
	('2020-04-10', 'Pesach II'),
	('2020-04-11', 'Pesach III (CH\'\'M)'),
	('2020-04-12', 'Pesach IV (CH\'\'M)'),
	('2020-04-13', 'Pesach V (CH\'\'M)'),
	('2020-04-14', 'Pesach VI (CH\'\'M)'),
	('2020-04-15', 'Pesach VII'),
	('2020-04-16', 'Pesach VIII'),
	('2020-05-28', 'Erev Shavuot'),
	('2020-05-29', 'Shavuot I'),
	('2020-05-30', 'Shavuot II'),
	('2020-07-29', 'Erev Tish\'a B\'Av'),
	('2020-07-30', 'Tish\'a B\'Av'),
	('2020-09-18', 'Erev Rosh Hashana'),
	('2020-09-19', 'Rosh Hashana 5781'),
	('2020-09-20', 'Rosh Hashana II'),
	('2020-09-27', 'Erev Yom Kippur'),
	('2020-09-28', 'Yom Kippur'),
	('2020-10-02', 'Erev Sukkot'),
	('2020-10-03', 'Sukkot I'),
	('2020-10-04', 'Sukkot II'),
	('2020-10-05', 'Sukkot III (CH\'\'M)'),
	('2020-10-06', 'Sukkot IV (CH\'\'M)'),
	('2020-10-07', 'Sukkot V (CH\'\'M)'),
	('2020-10-08', 'Sukkot VI (CH\'\'M)'),
	('2020-10-09', 'Sukkot VII (Hoshana Raba)'),
	('2020-10-10', 'Shmini Atzeret'),
	('2020-10-11', 'Simchat Torah'),
	('2020-12-10', 'Chanukah: 1 Candle'),
	('2020-12-11', 'Chanukah: 2 Candles'),
	('2020-12-12', 'Chanukah: 3 Candles'),
	('2020-12-13', 'Chanukah: 4 Candles'),
	('2020-12-14', 'Chanukah: 5 Candles'),
	('2020-12-15', 'Chanukah: 6 Candles'),
	('2020-12-16', 'Chanukah: 7 Candles'),
	('2020-12-17', 'Chanukah: 8 Candles'),
	('2020-12-18', 'Chanukah: 8th Day'),
	('2021-02-25', 'Erev Purim'),
	('2021-02-26', 'Purim'),
	('2021-03-27', 'Erev Pesach'),
	('2021-03-28', 'Pesach I'),
	('2021-03-29', 'Pesach II'),
	('2021-03-30', 'Pesach III (CH\'\'M)'),
	('2021-03-31', 'Pesach IV (CH\'\'M)'),
	('2021-04-01', 'Pesach V (CH\'\'M)'),
	('2021-04-02', 'Pesach VI (CH\'\'M)'),
	('2021-04-03', 'Pesach VII'),
	('2021-04-04', 'Pesach VIII'),
	('2021-05-16', 'Erev Shavuot'),
	('2021-05-17', 'Shavuot I'),
	('2021-05-18', 'Shavuot II'),
	('2021-07-17', 'Erev Tish\'a B\'Av'),
	('2021-07-18', 'Tish\'a B\'Av'),
	('2021-09-06', 'Erev Rosh Hashana'),
	('2021-09-07', 'Rosh Hashana 5782'),
	('2021-09-08', 'Rosh Hashana II'),
	('2021-09-15', 'Erev Yom Kippur'),
	('2021-09-16', 'Yom Kippur'),
	('2021-09-20', 'Erev Sukkot'),
	('2021-09-21', 'Sukkot I'),
	('2021-09-22', 'Sukkot II'),
	('2021-09-23', 'Sukkot III (CH\'\'M)'),
	('2021-09-24', 'Sukkot IV (CH\'\'M)'),
	('2021-09-25', 'Sukkot V (CH\'\'M)'),
	('2021-09-26', 'Sukkot VI (CH\'\'M)'),
	('2021-09-27', 'Sukkot VII (Hoshana Raba)'),
	('2021-09-28', 'Shmini Atzeret'),
	('2021-09-29', 'Simchat Torah'),
	('2021-11-28', 'Chanukah: 1 Candle'),
	('2021-11-29', 'Chanukah: 2 Candles'),
	('2021-11-30', 'Chanukah: 3 Candles'),
	('2021-12-01', 'Chanukah: 4 Candles'),
	('2021-12-02', 'Chanukah: 5 Candles'),
	('2021-12-03', 'Chanukah: 6 Candles'),
	('2021-12-04', 'Chanukah: 7 Candles'),
	('2021-12-05', 'Chanukah: 8 Candles'),
	('2021-12-06', 'Chanukah: 8th Day'),
	('2022-03-16', 'Erev Purim'),
	('2022-03-17', 'Purim'),
	('2022-04-15', 'Erev Pesach'),
	('2022-04-16', 'Pesach I'),
	('2022-04-17', 'Pesach II'),
	('2022-04-18', 'Pesach III (CH\'\'M)'),
	('2022-04-19', 'Pesach IV (CH\'\'M)'),
	('2022-04-20', 'Pesach V (CH\'\'M)'),
	('2022-04-21', 'Pesach VI (CH\'\'M)'),
	('2022-04-22', 'Pesach VII'),
	('2022-04-23', 'Pesach VIII'),
	('2022-06-04', 'Erev Shavuot'),
	('2022-06-05', 'Shavuot I'),
	('2022-06-06', 'Shavuot II'),
	('2022-08-06', 'Erev Tish\'a B\'Av'),
	('2022-08-07', 'Tish\'a B\'Av'),
	('2022-09-25', 'Erev Rosh Hashana'),
	('2022-09-26', 'Rosh Hashana 5783'),
	('2022-09-27', 'Rosh Hashana II'),
	('2022-10-04', 'Erev Yom Kippur'),
	('2022-10-05', 'Yom Kippur'),
	('2022-10-09', 'Erev Sukkot'),
	('2022-10-10', 'Sukkot I'),
	('2022-10-11', 'Sukkot II'),
	('2022-10-12', 'Sukkot III (CH\'\'M)'),
	('2022-10-13', 'Sukkot IV (CH\'\'M)'),
	('2022-10-14', 'Sukkot V (CH\'\'M)'),
	('2022-10-15', 'Sukkot VI (CH\'\'M)'),
	('2022-10-16', 'Sukkot VII (Hoshana Raba)'),
	('2022-10-17', 'Shmini Atzeret'),
	('2022-10-18', 'Simchat Torah'),
	('2022-12-18', 'Chanukah: 1 Candle'),
	('2022-12-19', 'Chanukah: 2 Candles'),
	('2022-12-20', 'Chanukah: 3 Candles'),
	('2022-12-21', 'Chanukah: 4 Candles'),
	('2022-12-22', 'Chanukah: 5 Candles'),
	('2022-12-23', 'Chanukah: 6 Candles'),
	('2022-12-24', 'Chanukah: 7 Candles'),
	('2022-12-25', 'Chanukah: 8 Candles'),
	('2022-12-26', 'Chanukah: 8th Day'),
	('2023-03-06', 'Erev Purim'),
	('2023-03-07', 'Purim'),
	('2023-04-05', 'Erev Pesach'),
	('2023-04-06', 'Pesach I'),
	('2023-04-07', 'Pesach II'),
	('2023-04-08', 'Pesach III (CH\'\'M)'),
	('2023-04-09', 'Pesach IV (CH\'\'M)'),
	('2023-04-10', 'Pesach V (CH\'\'M)'),
	('2023-04-11', 'Pesach VI (CH\'\'M)'),
	('2023-04-12', 'Pesach VII'),
	('2023-04-13', 'Pesach VIII'),
	('2023-05-25', 'Erev Shavuot'),
	('2023-05-26', 'Shavuot I'),
	('2023-05-27', 'Shavuot II'),
	('2023-07-26', 'Erev Tish\'a B\'Av'),
	('2023-07-27', 'Tish\'a B\'Av'),
	('2023-09-15', 'Erev Rosh Hashana'),
	('2023-09-16', 'Rosh Hashana 5784'),
	('2023-09-17', 'Rosh Hashana II'),
	('2023-09-24', 'Erev Yom Kippur'),
	('2023-09-25', 'Yom Kippur'),
	('2023-09-29', 'Erev Sukkot'),
	('2023-09-30', 'Sukkot I'),
	('2023-10-01', 'Sukkot II'),
	('2023-10-02', 'Sukkot III (CH\'\'M)'),
	('2023-10-03', 'Sukkot IV (CH\'\'M)'),
	('2023-10-04', 'Sukkot V (CH\'\'M)'),
	('2023-10-05', 'Sukkot VI (CH\'\'M)'),
	('2023-10-06', 'Sukkot VII (Hoshana Raba)'),
	('2023-10-07', 'Shmini Atzeret'),
	('2023-10-08', 'Simchat Torah'),
	('2023-12-07', 'Chanukah: 1 Candle'),
	('2023-12-08', 'Chanukah: 2 Candles'),
	('2023-12-09', 'Chanukah: 3 Candles'),
	('2023-12-10', 'Chanukah: 4 Candles'),
	('2023-12-11', 'Chanukah: 5 Candles'),
	('2023-12-12', 'Chanukah: 6 Candles'),
	('2023-12-13', 'Chanukah: 7 Candles'),
	('2023-12-14', 'Chanukah: 8 Candles'),
	('2023-12-15', 'Chanukah: 8th Day'),
	('2024-03-23', 'Erev Purim'),
	('2024-03-24', 'Purim'),
	('2024-04-22', 'Erev Pesach'),
	('2024-04-23', 'Pesach I'),
	('2024-04-24', 'Pesach II'),
	('2024-04-25', 'Pesach III (CH\'\'M)'),
	('2024-04-26', 'Pesach IV (CH\'\'M)'),
	('2024-04-27', 'Pesach V (CH\'\'M)'),
	('2024-04-28', 'Pesach VI (CH\'\'M)'),
	('2024-04-29', 'Pesach VII'),
	('2024-04-30', 'Pesach VIII'),
	('2024-06-11', 'Erev Shavuot'),
	('2024-06-12', 'Shavuot I'),
	('2024-06-13', 'Shavuot II'),
	('2024-08-12', 'Erev Tish\'a B\'Av'),
	('2024-08-13', 'Tish\'a B\'Av'),
	('2024-10-02', 'Erev Rosh Hashana'),
	('2024-10-03', 'Rosh Hashana 5785'),
	('2024-10-04', 'Rosh Hashana II'),
	('2024-10-11', 'Erev Yom Kippur'),
	('2024-10-12', 'Yom Kippur'),
	('2024-10-16', 'Erev Sukkot'),
	('2024-10-17', 'Sukkot I'),
	('2024-10-18', 'Sukkot II'),
	('2024-10-19', 'Sukkot III (CH\'\'M)'),
	('2024-10-20', 'Sukkot IV (CH\'\'M)'),
	('2024-10-21', 'Sukkot V (CH\'\'M)'),
	('2024-10-22', 'Sukkot VI (CH\'\'M)'),
	('2024-10-23', 'Sukkot VII (Hoshana Raba)'),
	('2024-10-24', 'Shmini Atzeret'),
	('2024-10-25', 'Simchat Torah'),
	('2024-12-25', 'Chanukah: 1 Candle'),
	('2024-12-26', 'Chanukah: 2 Candles'),
	('2024-12-27', 'Chanukah: 3 Candles'),
	('2024-12-28', 'Chanukah: 4 Candles'),
	('2024-12-29', 'Chanukah: 5 Candles'),
	('2024-12-30', 'Chanukah: 6 Candles'),
	('2024-12-31', 'Chanukah: 7 Candles'),
	('2025-01-01', 'Chanukah: 8 Candles'),
	('2025-01-02', 'Chanukah: 8th Day'),
	('2025-03-13', 'Erev Purim'),
	('2025-03-14', 'Purim'),
	('2025-04-12', 'Erev Pesach'),
	('2025-04-13', 'Pesach I'),
	('2025-04-14', 'Pesach II'),
	('2025-04-15', 'Pesach III (CH\'\'M)'),
	('2025-04-16', 'Pesach IV (CH\'\'M)'),
	('2025-04-17', 'Pesach V (CH\'\'M)');
INSERT INTO `jewish_input` (`day`, `event`) VALUES
	('2025-04-18', 'Pesach VI (CH\'\'M)'),
	('2025-04-19', 'Pesach VII'),
	('2025-04-20', 'Pesach VIII'),
	('2025-06-01', 'Erev Shavuot'),
	('2025-06-02', 'Shavuot I'),
	('2025-06-03', 'Shavuot II'),
	('2025-08-02', 'Erev Tish\'a B\'Av'),
	('2025-08-03', 'Tish\'a B\'Av'),
	('2025-09-22', 'Erev Rosh Hashana'),
	('2025-09-23', 'Rosh Hashana 5786'),
	('2025-09-24', 'Rosh Hashana II'),
	('2025-10-01', 'Erev Yom Kippur'),
	('2025-10-02', 'Yom Kippur'),
	('2025-10-06', 'Erev Sukkot'),
	('2025-10-07', 'Sukkot I'),
	('2025-10-08', 'Sukkot II'),
	('2025-10-09', 'Sukkot III (CH\'\'M)'),
	('2025-10-10', 'Sukkot IV (CH\'\'M)'),
	('2025-10-11', 'Sukkot V (CH\'\'M)'),
	('2025-10-12', 'Sukkot VI (CH\'\'M)'),
	('2025-10-13', 'Sukkot VII (Hoshana Raba)'),
	('2025-10-14', 'Shmini Atzeret'),
	('2025-10-15', 'Simchat Torah'),
	('2025-12-14', 'Chanukah: 1 Candle'),
	('2025-12-15', 'Chanukah: 2 Candles'),
	('2025-12-16', 'Chanukah: 3 Candles'),
	('2025-12-17', 'Chanukah: 4 Candles'),
	('2025-12-18', 'Chanukah: 5 Candles'),
	('2025-12-19', 'Chanukah: 6 Candles'),
	('2025-12-20', 'Chanukah: 7 Candles'),
	('2025-12-21', 'Chanukah: 8 Candles'),
	('2025-12-22', 'Chanukah: 8th Day'),
	('2026-03-02', 'Erev Purim'),
	('2026-03-03', 'Purim'),
	('2026-04-01', 'Erev Pesach'),
	('2026-04-02', 'Pesach I'),
	('2026-04-03', 'Pesach II'),
	('2026-04-04', 'Pesach III (CH\'\'M)'),
	('2026-04-05', 'Pesach IV (CH\'\'M)'),
	('2026-04-06', 'Pesach V (CH\'\'M)'),
	('2026-04-07', 'Pesach VI (CH\'\'M)'),
	('2026-04-08', 'Pesach VII'),
	('2026-04-09', 'Pesach VIII'),
	('2026-05-21', 'Erev Shavuot'),
	('2026-05-22', 'Shavuot I'),
	('2026-05-23', 'Shavuot II'),
	('2026-07-22', 'Erev Tish\'a B\'Av'),
	('2026-07-23', 'Tish\'a B\'Av'),
	('2026-09-11', 'Erev Rosh Hashana'),
	('2026-09-12', 'Rosh Hashana 5787'),
	('2026-09-13', 'Rosh Hashana II'),
	('2026-09-20', 'Erev Yom Kippur'),
	('2026-09-21', 'Yom Kippur'),
	('2026-09-25', 'Erev Sukkot'),
	('2026-09-26', 'Sukkot I'),
	('2026-09-27', 'Sukkot II'),
	('2026-09-28', 'Sukkot III (CH\'\'M)'),
	('2026-09-29', 'Sukkot IV (CH\'\'M)'),
	('2026-09-30', 'Sukkot V (CH\'\'M)'),
	('2026-10-01', 'Sukkot VI (CH\'\'M)'),
	('2026-10-02', 'Sukkot VII (Hoshana Raba)'),
	('2026-10-03', 'Shmini Atzeret'),
	('2026-10-04', 'Simchat Torah'),
	('2026-12-04', 'Chanukah: 1 Candle'),
	('2026-12-05', 'Chanukah: 2 Candles'),
	('2026-12-06', 'Chanukah: 3 Candles'),
	('2026-12-07', 'Chanukah: 4 Candles'),
	('2026-12-08', 'Chanukah: 5 Candles'),
	('2026-12-09', 'Chanukah: 6 Candles'),
	('2026-12-10', 'Chanukah: 7 Candles'),
	('2026-12-11', 'Chanukah: 8 Candles'),
	('2026-12-12', 'Chanukah: 8th Day'),
	('2027-03-22', 'Erev Purim'),
	('2027-03-23', 'Purim'),
	('2027-04-21', 'Erev Pesach'),
	('2027-04-22', 'Pesach I'),
	('2027-04-23', 'Pesach II'),
	('2027-04-24', 'Pesach III (CH\'\'M)'),
	('2027-04-25', 'Pesach IV (CH\'\'M)'),
	('2027-04-26', 'Pesach V (CH\'\'M)'),
	('2027-04-27', 'Pesach VI (CH\'\'M)'),
	('2027-04-28', 'Pesach VII'),
	('2027-04-29', 'Pesach VIII'),
	('2027-06-10', 'Erev Shavuot'),
	('2027-06-11', 'Shavuot I'),
	('2027-06-12', 'Shavuot II'),
	('2027-08-11', 'Erev Tish\'a B\'Av'),
	('2027-08-12', 'Tish\'a B\'Av'),
	('2027-10-01', 'Erev Rosh Hashana'),
	('2027-10-02', 'Rosh Hashana 5788'),
	('2027-10-03', 'Rosh Hashana II'),
	('2027-10-10', 'Erev Yom Kippur'),
	('2027-10-11', 'Yom Kippur'),
	('2027-10-15', 'Erev Sukkot'),
	('2027-10-16', 'Sukkot I'),
	('2027-10-17', 'Sukkot II'),
	('2027-10-18', 'Sukkot III (CH\'\'M)'),
	('2027-10-19', 'Sukkot IV (CH\'\'M)'),
	('2027-10-20', 'Sukkot V (CH\'\'M)'),
	('2027-10-21', 'Sukkot VI (CH\'\'M)'),
	('2027-10-22', 'Sukkot VII (Hoshana Raba)'),
	('2027-10-23', 'Shmini Atzeret'),
	('2027-10-24', 'Simchat Torah'),
	('2027-12-24', 'Chanukah: 1 Candle'),
	('2027-12-25', 'Chanukah: 2 Candles'),
	('2027-12-26', 'Chanukah: 3 Candles'),
	('2027-12-27', 'Chanukah: 4 Candles'),
	('2027-12-28', 'Chanukah: 5 Candles'),
	('2027-12-29', 'Chanukah: 6 Candles'),
	('2027-12-30', 'Chanukah: 7 Candles'),
	('2027-12-31', 'Chanukah: 8 Candles'),
	('2028-01-01', 'Chanukah: 8th Day'),
	('2028-03-11', 'Erev Purim'),
	('2028-03-12', 'Purim'),
	('2028-04-10', 'Erev Pesach'),
	('2028-04-11', 'Pesach I'),
	('2028-04-12', 'Pesach II'),
	('2028-04-13', 'Pesach III (CH\'\'M)'),
	('2028-04-14', 'Pesach IV (CH\'\'M)'),
	('2028-04-15', 'Pesach V (CH\'\'M)'),
	('2028-04-16', 'Pesach VI (CH\'\'M)'),
	('2028-04-17', 'Pesach VII'),
	('2028-04-18', 'Pesach VIII'),
	('2028-05-30', 'Erev Shavuot'),
	('2028-05-31', 'Shavuot I'),
	('2028-06-01', 'Shavuot II'),
	('2028-07-31', 'Erev Tish\'a B\'Av'),
	('2028-08-01', 'Tish\'a B\'Av'),
	('2028-09-20', 'Erev Rosh Hashana'),
	('2028-09-21', 'Rosh Hashana 5789'),
	('2028-09-22', 'Rosh Hashana II'),
	('2028-09-29', 'Erev Yom Kippur'),
	('2028-09-30', 'Yom Kippur'),
	('2028-10-04', 'Erev Sukkot'),
	('2028-10-05', 'Sukkot I'),
	('2028-10-06', 'Sukkot II'),
	('2028-10-07', 'Sukkot III (CH\'\'M)'),
	('2028-10-08', 'Sukkot IV (CH\'\'M)'),
	('2028-10-09', 'Sukkot V (CH\'\'M)'),
	('2028-10-10', 'Sukkot VI (CH\'\'M)'),
	('2028-10-11', 'Sukkot VII (Hoshana Raba)'),
	('2028-10-12', 'Shmini Atzeret'),
	('2028-10-13', 'Simchat Torah'),
	('2028-12-12', 'Chanukah: 1 Candle'),
	('2028-12-13', 'Chanukah: 2 Candles'),
	('2028-12-14', 'Chanukah: 3 Candles'),
	('2028-12-15', 'Chanukah: 4 Candles'),
	('2028-12-16', 'Chanukah: 5 Candles'),
	('2028-12-17', 'Chanukah: 6 Candles'),
	('2028-12-18', 'Chanukah: 7 Candles'),
	('2028-12-19', 'Chanukah: 8 Candles'),
	('2028-12-20', 'Chanukah: 8th Day');
/*!40000 ALTER TABLE `jewish_input` ENABLE KEYS */;

CREATE TABLE `jewish_source` (
	`day` DATE NOT NULL,
	`year` INT(4) NULL,
	`event` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`calendar` VARCHAR(6) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

DELIMITER //
CREATE FUNCTION DATEFROMPARTS(year INT, month INT, day INT) RETURNS date
    NO SQL
    DETERMINISTIC
    comment 'Make a date from y,m,d; matches native function in SQL Server'
RETURN DATE(CONCAT_WS('-', year,month,day))//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `LAST_DAYOFWEEK_OF`(datestamp DATETIME, dayofweek INT) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'last weekday of a month, where dayofweek: 1=sunday, 2=monday, etc'
RETURN TRUNC_DAYOFWEEK(LAST_DAY(datestamp), dayofweek)//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `LAST_MONDAY_OF`(datestamp DATETIME) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'last monday of the month'
RETURN LAST_DAYOFWEEK_OF(datestamp, 2)//
DELIMITER ;

CREATE TABLE `north_america_source` (
	`DAY` DATE NULL,
	`EVENT` VARCHAR(21) NOT NULL COLLATE 'utf8mb4_general_ci',
	`calendar` VARCHAR(13) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

DELIMITER //
CREATE FUNCTION `ROUND_HOUR`(datestamp DATETIME) RETURNS datetime
    NO SQL
    DETERMINISTIC
    COMMENT 'returns nearest hour'
RETURN DATE_FORMAT(datestamp + INTERVAL 30 MINUTE, '%Y-%m-%d %H:00')//
DELIMITER ;

CREATE TABLE `seq_0_65535` (
	`seq` BIGINT(25) NOT NULL
) ENGINE=MyISAM;

DELIMITER //
CREATE FUNCTION `TRUNC_DAY`(datestamp DATETIME) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'returns current date (preceding midnight)'
RETURN DATE(datestamp)//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_DAYOFWEEK`(datestamp DATETIME, dayofweek INT) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'preceding weekday, where dayofweek: 1=sunday, 2=monday, etc'
RETURN FROM_DAYS(TO_DAYS(datestamp) -MOD(TO_DAYS(datestamp) -dayofweek, 7))//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_HOUR`(datestamp DATETIME) RETURNS datetime
    NO SQL
    DETERMINISTIC
    COMMENT 'returns current hour'
RETURN DATE_FORMAT(datestamp, '%Y-%m-%d %H:00')//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_MONDAY`(datestamp DATETIME) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'preceding Monday'
RETURN TRUNC_DAYOFWEEK(datestamp, 2)//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_MONTH`(datestamp DATETIME) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'returns preceding first of the month'
RETURN DATE(DATE_FORMAT(datestamp, '%Y-%m-01'))//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_N_HOURS`(datestamp DATETIME, n INT) RETURNS datetime
    NO SQL
    DETERMINISTIC
    COMMENT 'truncate to N hour boundary. For example,\r\n           TRUNCATE_N_HOURS(sometime, 12) gives the nearest\r\n           preceding half-day (noon, or midnight'
RETURN DATE(datestamp) +
                INTERVAL (HOUR(datestamp) -
                          HOUR(datestamp) MOD n) HOUR//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_N_MINUTES`(datestamp DATETIME, n INT) RETURNS datetime
    NO SQL
    DETERMINISTIC
    COMMENT 'truncate to N minute boundary. For example,\r\n           TRUNCATE_N_MINUTES(sometime, 15) gives the nearest\r\n           preceding quarter hour'
RETURN DATE_FORMAT(datestamp,'%Y-%m-%d %H:00') +
                INTERVAL (MINUTE(datestamp) -
                          MINUTE(datestamp) MOD n) MINUTE//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_QUARTER`(datestamp DATETIME) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'returns preceding first of the quarter'
RETURN DATE(CONCAT(YEAR(datestamp),'-', 1 + 3*(QUARTER(datestamp)-1),'-01'))//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_SUNDAY`(datestamp DATETIME) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'preceding Sunday'
RETURN TRUNC_DAYOFWEEK(datestamp, 1)//
DELIMITER ;

DELIMITER //
CREATE FUNCTION `TRUNC_YEAR`(datestamp DATETIME) RETURNS date
    NO SQL
    DETERMINISTIC
    COMMENT 'returns preceding first of the year'
RETURN DATE(DATE_FORMAT(datestamp, '%Y-01-01'))//
DELIMITER ;

CREATE TABLE `weekend_source` (
	`day` DATE NULL,
	`year` INT(4) NULL,
	`event` VARCHAR(7) NOT NULL COLLATE 'utf8mb4_general_ci',
	`calendar` VARCHAR(7) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

CREATE TABLE `year_input` (
	`year` BIGINT(18) NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `year_source` (
	`day` DATE NULL,
	`year` BIGINT(18) NOT NULL
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `christian_west_source`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `christian_west_source` AS SELECT DAY, 'Easter' EVENT, 'Christian (Western)' calendar FROM easter_west_input
UNION ALL
SELECT DAY - INTERVAL 46 DAY, 'Ash Wednesday' EVENT, 'Christian (Western)' calendar FROM easter_west_input
UNION ALL 
SELECT DAY + INTERVAL 7 WEEK, 'Pentecost' EVENT, 'Christian (Western)' calendar FROM easter_west_input
UNION ALL 
SELECT DAY - INTERVAL 2 DAY, 'Good Friday' EVENT, 'Christian (Western)' calendar FROM easter_west_input
UNION ALL 
SELECT DAY - INTERVAL 1 WEEK, 'Palm Sunday' EVENT, 'Christian (Western)' calendar FROM easter_west_input
UNION ALL
SELECT TRUNC_SUNDAY(CONCAT_WS('-', YEAR, 12, 24)) - INTERVAL 3 WEEK, 'Advent 1', 'Christian (Western)' FROM year_source 
UNION ALL 
SELECT DATE(CONCAT_WS('-', YEAR, 12, 25)), 'Christmas' EVENT, 'Christian (Western)' calendar from year_source
UNION ALL
SELECT DATE(CONCAT_WS('-', YEAR, 1, 6)), 'Epiphany' EVENT, 'Christian (Western)' calendar FROM year_source ;

DROP TABLE IF EXISTS `day_input`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `day_input` AS SELECT DATE('1700-01-01') 
     + INTERVAL A.N + 3*(B.N + 3*(C.N + 4*(D.N + 5*(E.N + 5*(F.N + 5*(G.N + 7*(H.N))))))) DAY day
  FROM (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2) AS A
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2) AS B
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS C
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) AS D
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) AS E
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) AS F
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6) AS G
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6) AS H ;

DROP TABLE IF EXISTS `day_source`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `day_source` AS SELECT day, YEAR(day) year FROM day_input ;

DROP TABLE IF EXISTS `holiday_source`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `holiday_source` AS SELECT day, YEAR(day) year, event, calendar FROM christian_west_source
UNION ALL
SELECT day, YEAR(day) year, event, calendar FROM north_america_source 
UNION ALL
SELECT day, YEAR(day) year, event, calendar FROM jewish_source ;

DROP TABLE IF EXISTS `jewish_source`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `jewish_source` AS SELECT day, YEAR(day) year, event, 'Jewish' as calendar
from jewish_input ;

DROP TABLE IF EXISTS `north_america_source`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `north_america_source` AS SELECT DATE(CONCAT_WS('-',YEAR, 1, 1)) DAY, 'New Year''s Day' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT FIRST_MONDAY_OF(DATE(CONCAT_WS('-',YEAR, 1, 1))) + INTERVAL 2 WEEK DAY, 'Dr. King''s Birthday' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT FIRST_MONDAY_OF(DATE(CONCAT_WS('-',YEAR, 2, 1))) + INTERVAL 2 WEEK DAY, 'Washington''s Birthday' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT day, event, 'Canada' calendar FROM christian_west_source WHERE event = 'Good Friday'
UNION ALL 
SELECT FIRST_MONDAY_OF(DATE(CONCAT_WS('-',YEAR, 4, 1))) + INTERVAL 2 WEEK DAY, 'Patriots'' Day' EVENT, 'Massachusetts' calendar FROM year_source
UNION ALL
SELECT LAST_MONDAY_OF(DATE(CONCAT_WS('-',YEAR, 5, 1))) DAY, 'Memorial Day' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT DATE(CONCAT_WS('-',YEAR, 5,5)) DAY, 'Cinco de Mayo' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT IF (DAYOFWEEK(DATE(CONCAT_WS('-',YEAR, 7, 1))) = 1, 
          DATE(CONCAT_WS('-',YEAR, 9, 2)), 
          DATE(CONCAT_WS('-',YEAR, 9, 1))) DAY, 'Canada Day' EVENT, 'Canada' calendar FROM year_source
UNION ALL
SELECT DATE(CONCAT_WS('-',YEAR, 7,4)) DAY, 'Independence Day' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT FIRST_MONDAY_OF(DATE(CONCAT_WS('-',YEAR, 9, 1))) DAY, 'Labor Day' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT FIRST_MONDAY_OF(DATE(CONCAT_WS('-',YEAR, 10, 1))) + INTERVAL 1 WEEK DAY, 'Columbus Day' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT FIRST_MONDAY_OF(DATE(CONCAT_WS('-',YEAR, 10, 1))) + INTERVAL 1 WEEK DAY, 'Thanksgiving Day' EVENT, 'Canada' calendar FROM year_source
UNION ALL
SELECT DATE(CONCAT_WS('-',YEAR, 11, 11)) DAY, 'Veterans'' Day' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT FIRST_DAYOFWEEK_OF(DATE(CONCAT_WS('-',YEAR, 11, 1)), 5) + INTERVAL 3 WEEK DAY, 'Thanksgiving Day' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT DATE(CONCAT_WS('-',YEAR, 12, 25)) DAY, 'Christmas Day' EVENT, 'USA' calendar FROM year_source
UNION ALL
SELECT DATE(CONCAT_WS('-',YEAR, 12, 25)) DAY, 'Christmas Day' EVENT, 'Canada' calendar FROM year_source
UNION ALL
SELECT DATE(CONCAT_WS('-',YEAR, 12, 31)) DAY, 'New Year''s Eve' EVENT, 'USA' calendar FROM year_source ;

DROP TABLE IF EXISTS `seq_0_65535`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `seq_0_65535` AS SELECT A.N + 4*(B.N + 4*(C.N + 4*(D.N + 4*(E.N + 4*(F.N + 4*(G.N + 4*(H.N))))))) AS seq
  FROM (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS A
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS B
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS C
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS D
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS E
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS F
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS G
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3) AS H ;

DROP TABLE IF EXISTS `weekend_source`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `weekend_source` AS SELECT day,  year, 'Weekend' event, 'Weekend' calendar FROM day_source WHERE DAYOFWEEK(day) IN (1,7) ;

DROP TABLE IF EXISTS `year_input`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `year_input` AS SELECT 1700 + (A.N + 4*(B.N + 5*(C.N + 5*(D.N)))) AS year
  FROM (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 ) AS A
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) AS B
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4) AS C
  JOIN (SELECT 0 AS N UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5) AS D ;

DROP TABLE IF EXISTS `year_source`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `year_source` AS SELECT DATE(CONCAT_WS('-', year, 1,1)) day, year
  FROM year_input ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
