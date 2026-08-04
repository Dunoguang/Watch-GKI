# Huaqiangbei Android Smartwatch Kernel Project

**An open‑source initiative from MIT** bringing modern Android to Unisoc‑based (SL8541e / SC9832e) smartwatches.

---

## 🎯 Main Goal

Get **Android 12 and above** running smoothly on these devices, with a long‑term target of supporting up to **Android 17**.

---

## 🚀 Current Progress

We have successfully compiled a kernel using this project that runs **Android 16**, and **most features are fully operational**.

---

## 🔄 Difference from Upstream

The upstream repository provides an excellent foundation, but we cannot rely on it for device‑specific enhancements.  
Our approach:
- **Fork** the upstream
- **Build** a refined, production‑ready product
- **Contribute back** high‑quality code instead of waiting for upstream to act

---

## ✨ What We Added (vs. Upstream)

| Feature | Description |
|---------|-------------|
| **ReSukiSU** | Third‑party KernelSU implementation with advanced functionality |
| **SuSFS** | Kernel‑level hiding support |
| **EROFS** | Extended read‑only file system with LZ4 compression – improves `/system` space utilisation |
| **WiFi improvements** | Enhanced stability and performance |
| **Automatic touch resolution** | Dynamically retrieved from the panel |

---

## 📥 How to Use

1. **Download** the latest `boot.img` from the [Releases](../../releases) page.
2. **Unlock** your device and **disable AVB**.
3. **Flash** the image using any preferred method:  
   - BROM  
   - fastboot  
   - `dd` (on the device)  
4. Use a **vendor image** with a higher VNDK version.
5. Select a **GSI** with the `ab` tag (preferably with the `erofs` tag for best results).
6. **Wipe data** (recommended: format as F2FS).
7. **Reboot** and enjoy.

---

## 🛠 Compiling from Source

1. Fork this repository.
2. Add your custom code / features.
3. Build using **GitHub Actions** (or any Linux environment).

---

## 🤝 How to Contribute

We welcome contributions! You can:

- **Report issues** or suggest ideas via email: [19250405758@163.com](mailto:19250405758@163.com)
- **Open an Issue** on GitHub
- **Fork**, fix, and submit a **Pull Request**

---

## 📄 License

This project is released under the **MIT License** – feel free to use, modify, and distribute.

---

**Happy hacking!**  
— The Watch Kernel Team
