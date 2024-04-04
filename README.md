# Fee inventory for Consumer Information page

This repository shows how to build a page meeting the [Higher Education Costs and Postgraduate Outcomes Report (SB 135) reqiurements](https://codes.ohio.gov/ohio-revised-code/section-3345.024) using the [HEI Tuition & Fees Inventory file](https://highered.ohio.gov/data-reports/hei-system/hei-file-doc/hei-tuition-fees-inventory-sa) and free open-source software.

[FI.R](https://github.com/lorainccc/fee-inventory/blob/main/FI.R) is an [R](https://www.r-project.org/) script showing some examples of parsing the Fees Inventory document.

[fees.qmd](https://github.com/lorainccc/fee-inventory/blob/main/fees.qmd) is a [Quarto](https://quarto.org/) document that renders a .pdf using the inputs in the header, namely the academic year and the fees inventory file name.
