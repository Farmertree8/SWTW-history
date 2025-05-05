# 本專案暫時停止更新

欲為校際交流群歷史計畫貢獻，請私訊本專案任一個貢獻者之Discord帳號。

# 校際交流群編年史SWTW-History專案操作說明
(for Windows 使用者)

> 📘 本專案使用 [Quartz](https://github.com/jackyzha0/quartz) + Git 管理 Obsidian 筆記資料，並透過 GitHub 同步更新內容。

**以下內容是給需要大量長期編輯的史官，若你不打算如此，請創立issue並貼上你欲更正的內容。**

以下是部屬本資料庫的簡易步驟：
1. 申請 Github 帳號、安裝 Git 桌面並加以登入
2. 與 Farmertree8 索取資料庫編輯權
3. 安裝 https://nodejs.org/
4. 執行`必要套件與環境檢查.bat`
5. 執行`[編史前注意]自動拉取Github更新.bat`
6. 在 Obsidian 筆記內選取 SWTW-History 當作Vault/保險庫

你說你看不懂? 請你往下讀吧~

## 📁 資料夾內容總覽

| 檔案 / 資料夾名稱                         | 說明 |
|-----------------------------------------|------|
| `content/`                               | 你所有的 Obsidian 筆記請放在這裡。 |
| `LICENSE.txt`                            | 授權資訊（可忽略）。 |
| `README.md`                            | 應讀文件（本文件）。 |
| `[編史前注意]自動拉取Github更新.bat`      | 每次修改前**請先執行此檔案更新**，以免覆蓋他人最新版本。 |
| `同步Quartz文件.bat`               | 修改完後點選執行，會將檔案同步。 |
| `必要套件與環境檢查.bat`                 | **第一次使用前**請先執行，檢查是否安裝好 `Git` 和 `Node.js`。 |

---

## ⚠️ 重要提醒：請勿放在中文路徑！

**請勿把整個資料夾放在含有中文名稱的資料夾內**，例如：
```
❌ C:\Users\user\Desktop\校際\SWTW-history
✅ C:\Users\user\Documents\SWTW-history
````

這會導致某些工具（如 Git、Node.js）運作失敗。

---

## 🧪 第一次使用：環境檢查與安裝

1. 執行以下檔案：

```bat
必要套件與環境檢查.bat
````

這個檔案會幫你檢查是否安裝：

* ✅ [Git](https://git-scm.com/)
* ✅ [Node.js / npm](https://nodejs.org/)

若未安裝，請依提示前往下載。

---

## 🔄 每次使用前（重要）

在開始修改筆記前，請先執行：

```bat
[編史前注意]自動拉取Github更新.bat
```

這會確保你的筆記版本是**最新的**，避免和其他人發生衝突。

---

## ✍️ 編輯筆記

1. 開啟 Obsidian，選擇母資料夾 `SWTW-history` 作為你的 Vault。
2. 開始自由編輯、補充內容！

---

## 📤 修改完成後，上傳同步

關閉Obsidian後，請執行：

```bat
同步Quartz文件.bat
```

它會執行以下步驟：

* 觸發 `npx quartz sync`，產生網頁格式
* 自動推送 (`git push`) 到 GitHub 上的主專案

---

## 詳細教學
- 你擁有一台Window為作業軟體的電腦，至少是win 10/11
- 你會辨認英文字母，也就是說你看的懂上文
1. 註冊Github帳號 https://github.com
2. 點這裡![image](https://hackmd.io/_uploads/HkABcAVlgx.png)
3. 依序輸入：電子郵件、密碼(至少包含 15 個字元或至少 8 個字元（包括數字和小寫字母）)、使用者名稱(註冊完要傳給我這個)、您所在的國家
4. 去電子郵件驗證
5. 下載 [Git](https://github.com/git-for-windows/git/releases/download/v2.49.0.windows.1/Git-2.49.0-64-bit.exe)，全部點過去安裝。
6. 使用Win+R，打開介面後輸入cmd並輸入`git config --global user.name "你的名稱"`、`git config --global user.email "你的 Email"`，這裡的帳密你剛剛設定完。
7. 下載 [Node.js](https://nodejs.org/dist/v22.15.0/node-v22.15.0-x64.msi)，全部點過去安裝。
8. 打開[安裝包](https://github.com/Farmertree8/SWTW-history/releases/download/publish/SWTW-history.v1.0.0.zip)，在你系統"文件"資料夾底下解壓縮並點開`必要套件與環境檢查.bat`，他說你good就是好，不管他字元多崩壞。
9. 如果農夫樹終於回你抽象英文字串了，那你去檢查電子郵箱有沒有確認信，按確認。
10. 執行`[編史前注意]自動拉取Github更新.bat`
11. 最後去下載[obsidian](https://github.com/obsidianmd/obsidian-releases/releases/download/v1.8.10/Obsidian-1.8.10.exe)，全部點過去安裝，最後點安裝完後打開，他會叫你選語言(這有中文)，資料夾選SWTW-History，進去點相信，你就可以開始編輯了。
12. 最後你編輯完，關閉Obsidian程式，運行`同步Quartz文件.bat`，網站應該會在數分鐘內反映出來。

至少我的電腦上這個能跑。

## 🆘 常見問題

### Q1：為什麼我不能上傳？

請聯絡專案擁有者，加入 GitHub 協作者名單，才能 push。

## 💬 聯絡方式

如需協助或有疑義，請聯絡Discord`@Farmertree8`或其他管理員，或是創建issue。
For assistance or inquiries, please contact Discord user `@Farmertree8`, reach out to other project administrators, or create an issue.

## 📜 授權

- 本專案基於開放協作精神建立，感謝所有參與者的貢獻與分享。以下是與本專案相關的重要授權與聲明：
筆記管理採用 [Obsidian](https://obsidian.md/)，其軟體本身為免費提供個人使用，並依其[官方條款](https://obsidian.md/eula)授權。
- 本專案的靜態網站生成器採用 [Quartz](https://github.com/jackyzha0/quartz)，依據 [MIT 授權條款](https://opensource.org/licenses/MIT) 使用與修改，特此致謝開發者 [Jacky Zhao](https://jacky.zhao.ca)。
- 此文件部分由OpenAI生成。
- 所有透過 GitHub 協作平台提交的筆記與內容（Push、PR 等），將視為 **開放授權給本專案及其未來發展用途使用**，原作者擁有原始內容著作權。若需引用、改編、重製內容，請註明出處或作者 ID（若有署名，未屬名請註明本Github repo）。

請以尊重為基礎進行貢獻，共建知識檔案，亦歡迎協作者於筆記中留下署名或貢獻紀錄。
