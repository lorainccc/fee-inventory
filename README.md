# Fee inventory for Consumer Information page

This repository shows how to build a page meeting the [Higher Education Costs and Postgraduate Outcomes Report (SB 135) reqiurements](https://codes.ohio.gov/ohio-revised-code/section-3345.024) using the [HEI Tuition & Fees Inventory file](https://highered.ohio.gov/data-reports/hei-system/hei-file-doc/hei-tuition-fees-inventory-sa) and free open-source software.

[FI.R](https://github.com/lorainccc/fee-inventory/blob/main/FI.R) is an [R](https://www.r-project.org/) script showing some examples of parsing the Fees Inventory document.

[fees.qmd](https://github.com/lorainccc/fee-inventory/blob/main/fees.qmd) is a [Quarto](https://quarto.org/) document that renders a .docx or .pdf file using the inputs in the header, namely the academic year and the fees inventory file name. The following parameters can be customized in this file:

| Parameter     | Value                                     |
| :--           | :--                                       |
| year          | The academic year                         |
| file          | The path to the FI file                   |
| lms           | The name of your institution's LMS system |
| bookstore     | The name of your bookstore                |
| bookstorelink | A link to your bookstore's page           |

To include the name of your institution in the title, change the top line of [fees.qmd](https://github.com/lorainccc/fee-inventory/blob/main/fees.qmd):

```
title: "Fee Inventory"
```

to this:

```
title: |
       | Lorain County Community College
       | Fee Inventory
```

To show a logo above the title:

```
title: |
       | ![](logo.png)
       | Fee Inventory
```

Where "logo.png" is an image file in the same folder as [fees.qmd](https://github.com/lorainccc/fee-inventory/blob/main/fees.qmd).
