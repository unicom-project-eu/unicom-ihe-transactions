For integrating IDMP standards into clinical systems and making cross-border exchange operational, it is crucial to differentiate two aspects that drive the data exchange:
* Regulatory/product definition data exchange - where products are defined;
* Clinical and clinical data exchange - where product data is used to indicate a product or a group of products (as is the case of generic prescription)

Each of these may benefit from IDMP adoption, but they may be more or less "compatible" with IDMP. So, it matters to describe what we mean by "IDMP compatible" (see page XXX for that).

The content of these transactions is determined by the national regulation 
* What national concepts of medication are used 
  * examples: Generic prescription, VMP, VMPP, CNPEM, branded prescription etc - each of these has a different granularity and implies different descriptive attributes
* National terminologies may or not match IDMP in coding but also in meaning - for example dose form vs administrable dose form.

It is not required - or expectable that all countries use a consistent approach to IDMP, or change their national regulation and operations for supporting cross-border use cases, which, however important, are still a very small fraction of the data exchange related to prescriptions and dispenses.

To support those cases without requiring an impossible change to country national rules, it is essential to support IDMP data to varying degree, depending on the country's level of IDMP adoption.

The data exchanges that are required are:

**Regulatory Transactions: Comprehensive Product Details**
Regulatory transactions are centered around providing detailed information about medicinal products. The extent to which these transactions align with IDMP standards can vary significantly from country to country. Some nations might use IDMP-established concepts and agreed terminologies extensively, while others might incorporate only certain elements of IDMP or none at all.

The focus here is on capturing a comprehensive range of data points about the product, necessary for regulatory compliance, safety assessments, and quality assurance. This transaction is not exclusively about using all available IDMP data but rather about employing the relevant IDMP concepts and terminologies as per the country's adoption level.

**Clinical Transactions: Essential Information for Patient Care**
Clinical transactions, in contrast, are more focused on conveying key attributes of medicinal products that are crucial for their clinical use. These include information like the active substance, dosage, and form of the medication. Similar to regulatory transactions, the adoption of IDMP standards in clinical transactions can vary.
Some countries might use IDMP terminologies to describe these key attributes, while others may rely on national or non-IDMP standards. The primary objective is to ensure that the transaction provides clear, essential information for the safe and effective clinical use of the medication, regardless of the level of IDMP integration.
These transactions usually provide a sufficient description of a product. 



The Need for Flexibility in Both Transactions
Both types of transactions can exist on a spectrum, from fully non-IDMP to fully IDMP-compliant data, depending on each country's system and needs. It is important to clarify that using IDMP data doesn't imply the utilization of all possible IDMP information; it simply means that the data aligns with IDMP concepts and terminologies to the extent necessary and adopted by the country.

The proposed functionality need is therefore of 2 transactions 
- one for a detailed product description, to be exchanged between catalogs and regulators and possibly some clinical systems. This is a structured set of data.
- another for the clinical product definition, whcih is used in clinical systems and contains the description of a product or concept (e.g. generic) in a way that it can be easily exchanged in clinical transactions such as prescriptions, dispenses, etc.

