# 🛍️ Shopping App Flutter

![Flutter](https://img.shields.io/badge/Flutter-3.5.3+-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-2.19+-blue?logo=dart)
![UI](https://img.shields.io/badge/Focus-UI%20Design-purple)
![Status](https://img.shields.io/badge/Backend-None-lightgrey)

---

## 📖 Introduction

**Shopping App Flutter** est une application mobile développée avec **Flutter**, inspirée d’une maquette **Figma** intitulée [HiFashion UI Kit](https://www.figma.com/design/BMek2fD2qfXwUGzuw4Ad1F/HiFahion-Ui-Kit?node-id=417-615&t=hTdczfmg1lc4q1Ds-1).  
Ce projet met l’accent sur la **création d’une interface utilisateur moderne et responsive**, sans logique backend.

💡 Objectif : améliorer mes compétences en **UI/UX Flutter** à travers la reproduction fidèle d’un design professionnel.

---

## 🚀 Fonctionnalités (UI uniquement)

- 🧾 **Authentification** : écrans de connexion et d’inscription stylisés.  
- 🏠 **Accueil** : page d’accueil avec **carousel** et catalogue de produits.  
- 📰 **Blog** : affichage d’articles tendances.  
- 🛒 **Panier** : interface d’ajout et de gestion d’articles.  
- 📚 **Collections** : affichage de collections par catégorie.  
- 🧭 **Navigation fluide** entre les pages principales.  

---

## 🎥 Démonstration

> Aperçu du rendu final de l’application :  
https://github.com/user-attachments/assets/f1732a38-bed5-42cd-815b-5173efec109c  

---

## 🛠️ Technologies utilisées

- **Framework** : Flutter `3.5.3+`  
- **Langage** : Dart  
- **UI/UX** : Reproduction Figma *(HiFashion UI Kit)*  
- **Navigation** : Flutter Navigator  
- **Polices** : TenorSans, BodoniModa  
- **Icônes** : FontAwesome  

### 📦 Packages utilisés
- `carousel_slider: ^5.0.0` → Carousel d’images  
- `font_awesome_flutter: ^10.8.0` → Icônes FontAwesome  
- `cupertino_icons: ^1.0.8` → Icônes iOS par défaut  

---

## ⚙️ Installation

### 🧩 Prérequis
- Flutter SDK `3.5.3+`  
- Android Studio ou VS Code  
- Un émulateur ou un appareil physique  

### 🚀 Étapes d’exécution

```bash
# Cloner le projet
git clone https://github.com/votre-username/shopping-app-flutter.git

# Accéder au répertoire
cd shopping-app-flutter

# Installer les dépendances
flutter pub get

# Lancer l'application
flutter run
```

---

## 🏗️ Architecture du projet

```
ShoppingApp/
├── lib/
│   ├── core/
│   │   ├── constante/               # Constantes globales, couleurs, styles
│   │   └── widget/                  # Widgets réutilisables (boutons, champs, etc.)
│   ├── features/
│   │   ├── account/                 # Gestion du profil utilisateur
│   │   │   ├── screen/
│   │   │   └── widget/
│   │   ├── auth/                    # Authentification (UI)
│   │   │   └── screen/
│   │   ├── blog/                    # Section blog / actualités
│   │   │   ├── screen/
│   │   │   └── widget/
│   │   ├── cart/                    # Panier d’achat
│   │   │   └── screen/
│   │   ├── category/                # Catégories et filtres
│   │   │   ├── screen/
│   │   │   └── widget/
│   │   ├── collection/              # Collections de produits
│   │   │   └── screen/
│   │   └── home/                    # Page d’accueil
│   │       ├── screen/
│   │       └── widget/
│   └── main.dart                    # Point d’entrée principal
├── test/                            # Tests unitaires ou UI (si ajoutés)
├── assets/                          # Images, polices, icônes
├── web/ | macos/ | windows/ | linux/
└── README.md
```

---

## 🗂️ Description des dossiers

- **core/** → contient les constantes, les widgets réutilisables et les éléments de style globaux.
- **features/** → chaque fonctionnalité (auth, home, cart, etc.) est isolée avec ses propres écrans et widgets.
- **screen/** → regroupe les pages principales de chaque module.
- **widget/** → contient les composants UI personnalisés propres à chaque module.
- **assets/** → inclut les images, polices et icônes utilisées dans l’application.

---
Si vous souhaitez en savoir plus sur ce projet ou discuter de développement Flutter, n’hésitez pas à me contacter :  

**kurkluserhat@gmail.com**   
[GitHub – Serhat6863](https://github.com/Serhat6863)  

---

✨ Développé avec **Flutter**  
© 2025 – Serhat KÜRKLÜ
