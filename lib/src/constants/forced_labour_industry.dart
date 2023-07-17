/// Options for forced labour industry (Tier 1)
///
/// Refer to field definitions:
/// https://github.com/UNMigration/HTCDS/blob/master/Field%20Definitions.mdx
enum ForcedLabourIndustry {
  agriculture(r"Agriculture, forestry and fishing"),
  mining(r"Mining and quarrying"),
  manufacturing(r"Manufacturing"),
  electricity(r"Electricity, gas, steam and air conditioning supply"),
  water(r"Water supply; sewerage, waste management and remediation"),
  construction(r"Construction"),
  wholesaleRetailTradeRepair(
      r"Wholesale and retail trade; repair of motor vehicles and motorcycles"),
  transportationAndStorage(r"Transportation and storage"),
  accommodationAndFoodServices(r"Accommodation and food service activities"),
  infoComm(r"Information and communication"),
  financial(r"Financial and insurance activities"),
  realEstate(r"Real estate activities"),
  professional(r"Professional, scientific and technical activities"),
  administrative(r"Administrative and support service activities"),
  defence(r"Public administration and defence; compulsory social security"),
  education(r"Education"),
  health(r"Human health and social work activities"),
  entertainment(r"Arts, entertainment and recreation"),
  other(r"Other service activities"),
  household(
      r"Activities of households as employers; undifferentiated goods- and services- producing activities of households for own use"),
  extraterritorial(r"Activities of extraterritorial organizations and bodies");

  const ForcedLabourIndustry(this.text);

  final String text;
}
