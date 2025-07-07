# 🚚 Supply Chain Delivery Analysis Dashboard

This Power BI project analyzes delivery performance in an e-commerce supply chain. It provides insights into shipment volumes, on-time delivery rates, and customer satisfaction across multiple warehouse blocks and transportation modes.

---

## 📊 Dashboard Features

### 1. **KPI Card**
- **Overall On-Time Rate** (% of shipments delivered on time)

### 2. **Bar Charts**
- On-Time Rate by Customer Rating
- On-Time Rate by Warehouse Block
- Shipment Count by Mode of Shipment

### 3. **Pie Chart**
- Shipment Volume Distribution by Delivery Mode (Ship, Road, Flight)

### 4. **Data Table**
- Total shipments, on-time counts, and rates by customer rating

### 5. **Interactive Filters**
- Customer Rating (Slider)
- Warehouse Block (Dropdown)
- Delivery Mode (Checkbox)

---

## 📁 File Contents

| File | Description |
|------|-------------|
| `Supply_Chain_Delivery_Analysis.pbit` | Power BI template file |
| `README.md` | Project overview and usage instructions |
| `sample_data.csv` | *(Optional)* Sample data for testing (not included if template only) |

---

## 🧠 Key Measures (DAX)

```dax
Total_of_Shipment = COUNTROWS(Train)

Number_of_On_Time = 
CALCULATE(COUNTROWS(Train), Train[Reached_on_Time_y_N] = 0)

Overall_On_Time_Rate = 
DIVIDE([Number_of_On_Time], [Total_of_Shipment])

On_Time_Rate % = 
FORMAT([Overall_On_Time_Rate], "0.00%")
