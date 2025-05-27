# GitfFish-buyExample

## Overview

**GitfFish-buyExample** is a Java web application simulating an online product purchase system.  
It features a simple interface for selecting products, entering purchase quantities, and viewing a purchase summary with total price calculation.  
This project is ideal for students learning Java EE (Jakarta EE), JSP, and servlet-based development.

---

## Features

- ✅ Table with available products and stock quantity  
- 🛒 Purchase form with quantity input per product  
- 📊 Summary table of purchases made, including subtotals and overall total  
- ⚠️ Error handling for negative quantities (with user-friendly messages)  
- 💾 Session-based cart management (persistent per user session)

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/imlosing07/GitfFish-buyExample.git
```

### 2. Requirements

- **Java Development Kit (JDK):** Version 11 or higher
- **IDE:** IntelliJ IDEA (recommended: 2024.1.4)
- **Web Server:** Eclipse GlassFish 6.2.5 (Full Profile)
- **Plugin:** GlassFish Plugin for IntelliJ IDEA

### 3. Deployment

1. Import the project as a Maven project in IntelliJ IDEA.
2. Configure the GlassFish server (point it to the `domain` folder of GlassFish 6.2.5).
3. Deploy the WAR file or run directly from the IDE.

---

## Screenshots

| **Product Table View** | **Purchase Summary** |
|------------------------|---------------------|
| *(Add your screenshots here!)* | *(Showcase your compiled project!)* |

---

## Project Structure

```
ComprasProductosGlassFish/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/codigo/
│       │       ├── Producto.java
│       │       ├── ItemCompra.java
│       │       └── CompraServlet.java
│       └── webapp/
│           ├── index.jsp
│           ├── resultado.jsp
│           └── WEB-INF/
│               └── web.xml
├── pom.xml
└── README.md
```

---

## Technologies Used

- Java 11
- Jakarta EE 9+
- JSP (JavaServer Pages)
- Servlets
- Maven
- GlassFish 6.2.5
- HTML/CSS

---

## Example Product Dataset

The following mock product list is included in memory:

| Product Name | Price (USD) | Stock |
|--------------|-------------|-------|
| Laptop       | 1200.00     | 5     |
| Smartphone   | 800.00      | 10    |
| Headphones   | 150.00      | 15    |
| Mouse        | 30.00       | 25    |
| Keyboard     | 50.00       | 20    |
| Monitor      | 300.00      | 8     |
| USB Drive    | 20.00       | 40    |
| Webcam       | 70.00       | 10    |

> **Note:** Users can only purchase up to the available quantity.

---

## Contributing

Pull requests are welcome!  
For major changes, please open an issue first to discuss what you'd like to improve or suggest.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Contact

For any questions or suggestions, feel free to [open an issue](https://github.com/imlosing07/GitfFish-buyExample/issues) or contact the maintainer.
