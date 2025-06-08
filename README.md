# 🧠 Smoking Behavior Data Analysis Using SQL

This project performs an in-depth analysis of smoking behaviors across various demographic and socio-economic groups using SQL.
The data is assumed to come from a dataset named `smoking`,
 containing information on individual smoking status, gender, age, income, education, marital status, ethnicity, and region.

---

## 📊 Objectives

The aim of this analysis is to uncover patterns and trends in smoking habits based on:

- General prevalence
- Gender and age
- Regional differences
- Education and income level
- Marital status and ethnicity

---

## 📁 Dataset Structure

The dataset `smoking` includes the following relevant columns:

- `smoke` – Indicates if the individual smokes (`Yes`/`No`)
- `gender` – Gender of the individual (`Male`, `Female`)
- `age` – Age of the individual (numeric)
- `region` – Region of residence
- `gross_income` – Annual income bracket
- `highest_qualification` – Highest level of education attained
- `marital_status` – Marital status
- `ethnicity` – Ethnic background

---

## 🧮 SQL Analysis Breakdown

## 📊 Summary of Findings

| Metric                  | Result     |
|-------------------------|------------|
| Total Individuals       | 1,691      |
| Smokers (%)             | 25.0%      |
| Non-Smokers (%)         | 75.0%      |

---

## 👤 Demographic Breakdown

### Age Distribution of Smokers
| Age Group     | Smokers Count |
|---------------|----------------|
| 14–25         | 54             |
| 25–40         | 136            |
| 40–60         | 136            |
| 60+           | 72             |

### Gender Distribution of Smokers
| Gender | Percentage |
|--------|------------|
| Male   | 44.0%      |
| Female | 56.0%      |

---

## 🌍 Regional Smoking Trends

Top regions by number of smokers:

| Region                  | Smokers Count |
|-------------------------|----------------|
| The North               | 24             |
| Midlands & East Anglia | 22             |
| South East              | 15             |
| Scotland                | 12             |
| London                  | 12             |
| South West              | 10             |
| Wales                   | 5              |

---

## 🎓 Smoking by Education Level

| Education Level       | Total Individuals | Smokers | Smoking Rate (%) |
|------------------------|-------------------|---------|------------------|
| GCSE/CSE               | 102               | 38      | 37.26%           |
| GCSE/O Level           | 308               | 105     | 34.09%           |
| ONC/BTEC               | 76                | 23      | 30.26%           |
| Other/Sub Degree       | 127               | 31      | 24.41%           |
| No Qualification       | 586               | 137     | 23.38%           |
| Higher/Sub Degree      | 125               | 27      | 21.60%           |
| A Levels               | 105               | 21      | 20.00%           |
| Degree                 | 262               | 39      | 14.89%           |

> 📌 **Insight**: Individuals with lower educational attainment are more likely to smoke.
Those with degrees have the lowest smoking rate at 14.89%.

---

## 💰 Smoking by Income Bracket

| Income Group        | Total | Smokers | Smoking Rate (%) |
|---------------------|--------|---------|------------------|
| £10,400–15,600      | 268    | 83      | 30.97%           |
| Under £2,600        | 133    | 36      | 27.07%           |
| £5,200–10,400       | 396    | 107     | 27.02%           |
| £2,600–5,200        | 257    | 64      | 24.90%           |
| £20,800–28,600      | 155    | 38      | 24.52%           |
| £15,600–20,800      | 188    | 45      | 23.94%           |
| Refused             | 108    | 21      | 19.44%           |
| Above £36,400       | 89     | 15      | 16.85%           |
| Unknown             | 18     | 3       | 16.67%           |
| £28,600–36,400      | 79     | 9       | 11.39%           |

> 💡 **Observation**: Smoking rates are highest in the £10,400–15,600 range and lowest in the £28,600–36,400 range.

---

## 💍 Marital Status and Smoking

| Marital Status | Total | Smokers | Smoking Rate (%) |
|----------------|--------|---------|------------------|
| Single         | 427    | 158     | 37.00%           |
| Divorced       | 161    | 58      | 36.03%           |
| Separated      | 68     | 22      | 32.35%           |
| Widowed        | 223    | 40      | 17.94%           |
| Married        | 812    | 143     | 17.61%           |

> ❤️ **Insight**: Single and divorced individuals smoke at significantly higher rates than those who are married or widowed.

---

## 🌈 Ethnicity and Smoking

| Ethnicity | Total | Smokers | Smoking Rate (%) |
|-----------|--------|---------|------------------|
| Mixed     | 14     | 5       | 35.71%           |
| White     | 1560   | 390     | 25.00%           |
| Black     | 34     | 8       | 23.53%           |
| Asian     | 41     | 8       | 19.51%           |
| Chinese   | 27     | 5       | 18.52%           |

> ✨ **Insight**: Mixed ethnicity individuals have the highest smoking rate, while Chinese and Asian individuals report the lowest.

---

---

## 🛠️ Technologies Used

* **SQLite / SQL (ANSI)**
* **Data Cleaning** (basic filtering and conditional aggregation)
* **Window Functions and CTEs** for modular and readable query logic

---

## 📈 Key Insights (Example)

> ⚠️ These are illustrative and not actual values unless you’ve run the queries:

* **Overall Smoking Rate**: \~32% of individuals reported smoking.
* **Age 25–40** is the most smoking-prone age group.
* **Lower education levels** tend to have higher smoking rates.
* **Smoking is most prevalent** in regions The North,Midlands & East Anglia , South East.
* **Single individuals and certain ethnic groups** show higher prevalence.

---

