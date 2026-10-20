# 🚗 HopShare Mobility — On-Demand Ride-Hailing, Social Carpooling & Split-Fare Transit Platform

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Google Maps](https://img.shields.io/badge/Google_Maps-Live_Routing-4285F4?style=for-the-badge&logo=googlemaps&logoColor=white)](https://cloud.google.com/maps-platform)
[![Firebase](https://img.shields.io/badge/Firebase-Realtime_%7C_Auth_%7C_FCM-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)
[![Stripe](https://img.shields.io/badge/Stripe-Split_Fare_Payments-635BFF?style=for-the-badge&logo=stripe&logoColor=white)](https://stripe.com)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](LICENSE)

---

## 🌟 Executive Overview & Core Problem Solved

**HopShare Mobility** is an on-demand urban transportation platform engineered in Flutter that modernizes traditional ride-hailing (such as Uber and Careem) by introducing **collaborative social carpooling and dynamic split-fare group transit**.

While conventional ride-hailing applications assign single vehicles to solitary riders at full fare, HopShare is architected for shared urban mobility—enabling friends, co-workers, and commuter groups traveling along overlapping corridors to combine rides, reduce congestion, and automatically split transit costs.

---

## 🚀 Key Platform Capabilities

### 1. On-Demand Ride Dispatch & Real-Time Telemetry
- **Instant Driver Matching:** Algorithmic dispatch matching riders with nearby verified drivers based on proximity, traffic conditions, and vehicle capacity.
- **Turn-by-Turn GPS Tracking:** Continuous, sub-second coordinate streaming displaying vehicle bearing, real-time ETA, and dynamic re-routing around traffic bottlenecks.

### 2. Multi-Rider Social Carpooling & Friends Ride Sharing
- **Group Ride Creation:** A primary rider can initiate a carpool, inviting friends via instant deep-links or in-app contact lists.
- **Multi-Stop Route Optimization:** The navigation engine computes dynamic waypoints with minimal route deviation, sequencing pickup and drop-off points efficiently.
- **Automated Split-Fare Settlement:** The backend calculates proportional fare shares based on individual trip distances, automatically billing each participant's linked payment method upon trip completion.

### 3. Safety, Verification & Operational Trust
- **Digital Ride Code (PIN Verification):** Passengers verify their driver via a rotating 4-digit PIN before the vehicle status transitions to "In Progress".
- **Live Trip Sharing:** Real-time web tracking links for emergency contacts showing vehicle speed, route corridor, and estimated arrival.
- **Emergency Dispatch (SOS):** Instant location broadcast to emergency services and operations dispatch desk.

---

## 🏛️ System Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           CLIENT APPLICATIONS LAYER                         │
│                                                                             │
│   ┌───────────────────────────────┐       ┌─────────────────────────────┐   │
│   │     HopShare Passenger App    │       │     HopShare Driver Suite   │   │
│   │  • Map Pickup/Drop Pins       │       │  • Turn-by-Turn Waypoints   │   │
│   │  • Multi-Friend Split Request │       │  • Ride Acceptance Matrix   │   │
│   │  • Live Vehicle Vector        │       │  • Real-Time Shift Earnings │   │
│   └───────────────┬───────────────┘       └──────────────┬──────────────┘   │
└───────────────────┼──────────────────────────────────────┼──────────────────┘
                    ▼                                      ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                    REAL-TIME TRANSIT DISPATCH LAYER                         │
│                                                                             │
│   • Google Maps Routes API & Distance Matrix Calculation                    │
│   • Correlated Corridor Waypoint Sequencing (Sub-500m deviation tolerance)   │
│   • Cloud Pub/Sub Telemetry Ingestion (Driver Coordinates Stream)          │
│   • Stripe Split-Escrow Charge Settlement Pipeline                          │
└──────────────────────────────────────┬──────────────────────────────────────┘
                                       ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                     CLOUD FIREBASE & GEO-INDEX SERVICES                     │
│               Cloud Firestore  •  GeoFlutterFire  •  Cloud Storage           │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 🛠️ Complete Technology Stack

| Domain | Technology | Implementation Detail |
|---|---|---|
| **Mobile Architecture** | Flutter 3.x / Dart 3.x | Custom high-performance map controllers & reactive state trees |
| **Geospatial Mapping** | Google Maps SDK & Directions API | Custom polyline renders, smooth car-marker interpolation |
| **Real-Time Dispatch** | Cloud Firestore & GeoFire | Sub-second spatial queries querying available drivers in radius |
| **Payment & Billing** | Stripe Mobile SDK & PaymentIntents | Automated multi-card pre-authorization and fare split capture |
| **Push & Alerts** | Firebase Cloud Messaging (FCM) | High-priority background alerts for arrival and pickup notices |

---

## 🏛️ Engineering Provenance

Architected, engineered, and maintained by **Muhammad Ali** as Principal Mobile Architect.
