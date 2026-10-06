# COMM-005 — Financial Escalation

## Evidence Metadata

| Field | Value |
|-------|-------|
| **Evidence ID**       | COMM-005                                                                                       |
| **Evidence Type**     | Recruiter Communication                                                                        |
| **Campaign Phase**    | Financial Escalation                                                                           |
| **Collection Method** | Direct Communication                                                                           |
| **Source**            | [Recruiter Chat Transcript](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Recruiter_Communications/Recruiter_Chat_Transcript.md)                                                                      |
| **Integrity**         | Original conversation preserved. Formatting converted to Markdown only.                        |
| **Related Domains**   | `unitelmatch[.]cc`, `unitelmatch[.]cyou`                                                               |
| **Related Analysis**  | [Findings.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md), [Indicators_of_Compromise.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md), [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md), [Confidence_Assessment.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Confidence_Assessment.md) |

---

# Executive Summary

This evidence documents the transition from operational training to financial engagement. During this phase, recruiter communications shifted from task-oriented guidance toward discussions involving deposits, cryptocurrency, account balances, withdrawals, and financial participation.

This transition represents a significant evolution in campaign behavior. While earlier stages emphasized trust-building and routine engagement, this phase introduces direct financial interaction, substantially increasing the investigative significance of the observed activities.

The progression from employment onboarding to financial participation supports the assessment that the recruitment process functioned as a mechanism for guiding participants toward monetary involvement.

---

# Investigation Relevance

This evidence supports the following investigation artifacts:

- Findings
- Investigation Timeline
- Indicators of Compromise
- Detection Opportunities
- Confidence Assessment
- Social Engineering Analysis
- Executive Report

---

# Campaign Phase

**Phase:** Financial Escalation

### Primary Objectives Observed

- Financial participation introduced.
- Cryptocurrency-related discussions observed.
- Deposit and withdrawal processes explained.
- User confidence reinforced before financial actions.
- Operational focus shifts from training to monetary activity.

---

# Key Observations

- Recruiter introduces financial terminology.
- Cryptocurrency becomes part of campaign communications.
- Financial transactions are presented as routine operational requirements.
- Recruiter continues providing reassurance throughout the process.
- Financial engagement is framed as a logical continuation of previous activities.
- No abrupt change in communication style despite increased financial commitment.

---

# Transcript

> **Note**
>
> The following transcript has been preserved in its original form. Only formatting has been modified to improve readability within this repository. No conversational content has been altered, omitted, or reordered.

---

### Phase: Financial Escalation

**Date:** 2026.07.22 – 2026.08.04  
**Participants:** チェ・ジュン (Choi Jun) and Hugh K (Hugh Chanetsa)

---

## Conversation Log

### 2026.07.22

**18:10** チェ・ジュン:  
![`CTI-2026-07_customer_service_traffic_task_request`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_customer_service_traffic_task_request.png)

> **Analyst Observation**
>
> The following message contains an image illustrating how to access customer service in order to request traffic for tasks.

---

**18:10** チェ・ジュン:  
こんにちは、私は TRC20 の入金アドレスを取得する必要があります

> **Analyst Observation**
>
> Direct request for a TRC20 (Tron-based USDT) deposit address. Marks transition from training to real financial onboarding.

---

**18:10** チェ・ジュン:  
住所を受け取ったらコピーして私に送ってください。私の店舗のためにチャージの前払いを行い、この注文の手続きを完了します

> **Analyst Observation**
>
> Explicit instruction: candidate must send deposit address so recruiter can “prepay” for an order. Framed as collaborative, but candidate is being set up to fund the transaction.
>
> 📎 Related Screenshot  
![`CTI-2026-07_financial_trc20_address_request.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_financial_trc20_address_request.png)

---

**18:12** Hugh K:  
これをあなたのアカウントから送信しましょうか？

> **Analyst Observation**
>
> Candidate seeks clarification: should this be sent from recruiter’s account? Shows caution about account ownership and transaction origin.

---

**18:14** チェ・ジュン:  
是的

> **Analyst Observation**
>
> Recruiter responds in Chinese (“Yes”), despite prior agreement to use English/Japanese. Suggests possible copy-paste or multilingual operation.

---

**18:15** チェ・ジュン:  
なぜなら、私たちがトレーニング中に使っているのは私の店舗だからです

> **Analyst Observation**
>
> Justification: training used recruiter’s store, implying candidate doesn’t yet control a funded account. Reinforces need for candidate to set up own deposit flow.

---

**18:17** Hugh K:  
送信したのですが、青いチェックマークが 1 つしかついていません。すみませんが、英語はお話しになれますか？英語が私の母国語なので、その方がやり取りがスムーズなんです。

> **Analyst Observation**
>
> Candidate notes message status (single check = not delivered/read) and formally requests English-only communication for clarity.

---

**18:18** チェ・ジュン:  
はい、おそらくカスタマーサービスが忙しいので、少し辛抱強く待ちましょう

> **Analyst Observation**
>
> Recruiter deflects, attributes delay to “customer service” being busy, not addressing language preference directly.

---

**18:24** Hugh K:  
わかりました、返信が来ました。

> **Analyst Observation**
>
> Candidate confirms receipt of a reply (likely from support or recruiter).

---

**18:24** Hugh K:  
![`CTI-2026-07_customer_service_traffic_task_request_conversation.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_customer_service_traffic_task_request_conversation.png)

> **Analyst Observation**
>
> Conversation between investigator and customer support about the recruiter’s crypto top-up that was supposedly done.

---

**18:24** チェ・ジュン:  
はい、住所はありますか？コピーして送ってください

> **Analyst Observation**
>
> Reiterates request for TRC20 address. Persistent focus on obtaining wallet details.

---

**18:25** チェ・ジュン:  
![`CTI-2026-07_customer_financial_trc20_address_highlighted.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_customer_financial_trc20_address_highlighted.png)

> **Analyst Observation**
>
> Likely a visual aid (e.g., where to find address in wallet).

---

**18:25** Hugh K:  
TMbunybGaMmrjt91SAJ8YGRDGkZ65huntH

> **Analyst Observation**
>
> Candidate provides a TRC20 address (42-character string starting with “T”). This is a critical step: sharing crypto wallet details with the recruiter.
>
> 📎 Related Screenshot  
![`CTI-2026-07_financial_recruiter_trc20_address.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_financial_recruiter_trc20_address.png)

---

**18:25** チェ・ジュン:  
はい、少々お待ちください。今から入金します

> **Analyst Observation**
>
> Recruiter confirms they will now “deposit” (likely sending USDT to the provided address as part of the simulated order).

---

**18:39** チェ・ジュン:  
![`CTI-2026-07_financial_deposit_proof.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_financial_deposit_proof.png)

> **Analyst Observation**
>
> The following message contains an image showing proof of deposit and the transaction hash.

---

**18:39** チェ・ジュン:  
カスタマーサービスに審査を依頼する

> **Analyst Observation**
>
> Indicates need for “customer service” to review/approve the transaction. Adds a layer of bureaucratic process to legitimize the flow.

---

**18:40** チェ・ジュン:  
さっき電話に出た

> **Analyst Observation**
>
> Claims to have just been on a phone call, possibly with support. Adds realism to the “review” process.

---

**18:44** Hugh K:  
大丈夫ですよ。画像を送信したので、先方が確認中です。

> **Analyst Observation**
>
> Candidate reassures recruiter that images were sent and are under review.

---

**18:46** チェ・ジュン:  
はい

> **Analyst Observation**
>
> Simple acknowledgment.

---

**18:47** チェ・ジュン:  
カスタマーサービスがあなたのアップデートに返信したので、私たちはそれを完了することができます

> **Analyst Observation**
>
> Claims approval received from support. Green light to proceed with order completion.

---

**18:48** Hugh K:  
![`CTI-2026-07_financial_balance_update.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_financial_balance_update.png)

> **Analyst Observation**
>
> Candidate sends screenshot of updated order status or balance.

---

**18:49** Hugh K:  
いいですね！

> **Analyst Observation**
>
> Positive reaction to the update.

---

**18:54** チェ・ジュン:  
はい、追加の 30％も入金されました

> **Analyst Observation**
>
> Confirms the 30% crypto bonus has been credited, reinforcing the incentive structure.

---

**18:54** チェ・ジュン:  
さあ、それを完成させましょう

> **Analyst Observation**
>
> Call to action: complete the order now that funds are in place.

---

**18:54** チェ・ジュン:  
注文を開いて、スクリーンショットを私に送ってください

> **Analyst Observation**
>
> Requests screenshot of the order page to verify candidate is following steps correctly.

---

**18:55** Hugh K:  
![`CTI-2026-07_training_order_completion-01.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_order_completion-01.png)

> **Analyst Observation**
>
> Candidate complies with screenshot request.

---

**18:55** チェ・ジュン:  
![`CTI-2026-07_training_order_completion-02.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_order_completion-02.png)

![`CTI-2026-07_training_order_completion-03.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_order_completion-03.png)

> **Analyst Observation**
>
> Recruiter sends image highlighting the “Advance” button and next step.

---

**18:55** チェ・ジュン:  
今すぐ「Advance」をクリックして注文を処理できます

> **Analyst Observation**
>
> Direct instruction to click “Advance” to process the order. This is the point where candidate commits funds.

---

**18:57** Hugh K:  
![`CTI-2026-07_training_order_completion-04.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_order_completion-04.png)

> **Analyst Observation**
>
> Candidate sends screenshot showing order in “processing” state.

---

**18:58** チェ・ジュン:  
![`CTI-2026-07_training_order_completion-05.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_order_completion-05.png)

> **Analyst Observation**
>
> Recruiter responds with image confirmation and an instruction about the next screen.

---

**18:59** Hugh K:  
![`CTI-2026-07_training_order_completion-06.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_order_completion-06.png)

> **Analyst Observation**
>
> Another screenshot from candidate, continuing the verification loop.

---

**19:00** チェ・ジュン:  
そうです。現在、注文は「輸送中*」に表示されます。その後は、プラットフォームが配送を完了するのを待つだけです

> **Analyst Observation**
>
> Confirms order status is now “In Transit.” Frames next phase as passive waiting for platform to complete delivery.

---

**19:00** Hugh K:  
いいですね！

> **Analyst Observation**
>
> Candidate expresses satisfaction.

---

**19:00** チェ・ジュン:  
TikTok のトラフィックは非常に多く、世界中のサプライヤーと協力しています。配送速度と購入者の体験を向上させるために、TikTok はできるだけ近くの地域から発送します。注文は通常 1～2 日以内に完了し、私たちは前払いの金額と利益を受け取ります

> **Analyst Observation**
>
> Elaborates on TikTok’s logistics model: high traffic, global suppliers, local shipping. Reassures that funds + profit will be received in 1–2 days.

---

**19:01** チェ・ジュン:  
今、あなたは理解しました。顧客に商品を送ったら、受け取りの署名を待って報酬と資金を受け取るだけです

> **Analyst Observation**
>
> Summarizes the cycle: ship → await signature → receive funds + reward. Simplifies the process to reduce perceived complexity.

---

**19:02** チェ・ジュン:  
このような模擬製品はすぐに受け取れます。受け取ったら、自分の資金と報酬を引き出すことができます

> **Analyst Observation**
>
> Clarifies that “simulated” orders settle quickly, enabling fast withdrawal, key incentive for continued participation.

---

**19:02** Hugh K:  
これで分かりました。

> **Analyst Observation**
>
> Candidate confirms full understanding.

---

**19:03** チェ・ジュン:  
あなたは素晴らしいです

> **Analyst Observation**
>
> Positive reinforcement.

---

**19:03** チェ・ジュン:  
そういうわけで！私たちのトレーニングは終了です

> **Analyst Observation**
>
> Officially declares training complete. Transitions candidate from learner to independent operator.

---

**19:03** チェ・ジュン:  
自分の店を始める前に、何か質問はありますか？

> **Analyst Observation**
>
> Opens floor for questions before candidate goes solo, standard onboarding closure.

---

**19:05** Hugh K:  
はい、報酬の受け取り方法と、支払いの頻度（週に何回かなど）について教えていただきたいです。

> **Analyst Observation**
>
> Candidate asks two practical questions: how to receive rewards and payout frequency. Shows intent to operate independently.

---

**19:07** チェ・ジュン:  
私たちが稼いだ資金は毎日引き出すことができ、顧客の注文を完了し、受け取りのサインをいただければ、私たちはお金を引き出すことができます

> **Analyst Observation**
>
> States funds can be withdrawn daily upon order completion and customer signature. Emphasizes liquidity and speed.

---

**19:08** チェ・ジュン:  
あなたの店舗はまだ新しいため、最初は注文が少し遅れるかもしれません。定期的に確認し、注文があれば教えてください

> **Analyst Observation**
>
> Manages expectations: new stores may have slower order flow. Encourages regular checking and reporting.

---

**19:09** Hugh K:  
それは素晴らしいですね！その会社が提携している特定の暗号資産ウォレットはありますか？

> **Analyst Observation**
>
> Candidate asks if there’s a preferred crypto wallet, practical question about infrastructure.

---

**19:09** チェ・ジュン:  
さらに、いつでももっと多くの商品を追加してください。より多くの商品はより多くの注文を獲得するチャンスです

> **Analyst Observation**
>
> Recruiter ignores wallet question and pivots to growth advice: add more products to increase order chances.

---

**19:10** チェ・ジュン:  
はい、資金を引き出す際は USDC または USDT を使用しています。TRC-20 の受け取りアドレスはお持ちですか？

> **Analyst Observation**
>
> Finally answers: withdrawals use USDC/USDT on TRC-20. Re-confirms candidate has a TRC-20 address (already provided earlier).

---

**19:11** Hugh K:  
なるほど、わかりました。まだ住所を持っていないのですが、どうすれば取得できますか？

> **Analyst Observation**
>
> Candidate contradicts earlier, now says they don’t have an address. May refer to a different wallet (e.g., for withdrawals vs. deposits).

---

**19:13** チェ・ジュン:  
はい、あなたは日本の地元の人ですか？もしかしたら、あなたに使ってみることを提案できるかもしれません

> **Analyst Observation**
>
> Recruiter checks if candidate is based in Japan to recommend a local exchange.

---

**19:14** Hugh K:  
はい、そうです。

> **Analyst Observation**
>
> Confirms Japan residency.

---

**19:14** チェ・ジュン:  
では、あなたのアプリに coincheck をダウンロードできます

> **Analyst Observation**
>
> Recommends Coincheck, a Japan-licensed crypto exchange. Adds legitimacy by naming a regulated platform.
>
> 📎 Related Screenshot  
![`CTI-2026-07_financial_coincheck_recommendation.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_financial_coincheck_recommendation.png)

---

**19:15** チェ・ジュン:  
次回の注文処理や資金の引き出しが便利になるように

> **Analyst Observation**
>
> Justification: Coincheck will streamline future deposits/withdrawals.

---

**19:16** Hugh K:  
わかりました、そうします。質問は以上です。これで、自分で試してみる準備は整いましたか？

> **Analyst Observation**
>
> Candidate confirms understanding and readiness to proceed independently.

---

**19:20** チェ・ジュン:  
私たちの今日のトレーニングは終了です

> **Analyst Observation**
>
> Reiterates training completion.

---

**19:21** チェ・ジュン:  
あなたは今、私のアカウントからログアウトして、自分の店舗にログインできます

> **Analyst Observation**
>
> Instructs candidate to switch from recruiter’s account to their own store.

---

**19:22** チェ・ジュン:  
私も自分のアカウントにログインして、配達済みかどうか確認したいです。資金を引き出す必要があります

> **Analyst Observation**
>
> Recruiter states they also need to log in to check delivery status and withdraw funds, mirroring candidate’s actions.

---

**19:23** Hugh K:  
ログアウトしました。

> **Analyst Observation**
>
> Confirms logout.

---

**19:24** チェ・ジュン:  
はい、まず自分の店にログインしてみてください

> **Analyst Observation**
>
> Guides candidate to log into their own store first.

---

**19:25** チェ・ジュン:  
はい、私の注文も受け取りました

> **Analyst Observation**
>
> Claims their own order has been “received,” reinforces that the system works.

---

**19:25** Hugh K:  
今、自分のストアにログインしました。

> **Analyst Observation**
>
> Candidate confirms successful login to their store.

---

**19:25** チェ・ジュン:  
unsent a message.

> **Analyst Observation**
>
> Message was unsent, content unknown. May indicate correction or change of plans.

---

**19:26** チェ・ジュン:  
このような仮想注文は通常非常に早く受け取れます。普通の注文のように 1～2 日かかって商品が届くわけではありません

> **Analyst Observation**
>
> Clarifies that “virtual” orders settle faster than physical shipments, manages expectations on timing.

---

**19:27** Hugh K:  
それは素晴らしいことです

> **Analyst Observation**
>
> Positive reaction.

---

**19:28** チェ・ジュン:  
![`CTI-2026-07_financial_transaction_profit.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_financial_transaction_profit.png)

> **Analyst Observation**
>
> Image sent showing withdrawal screen.

---

**19:28** チェ・ジュン:  
はい、これで資金を引き出せます

> **Analyst Observation**
>
> Confirms candidate can now withdraw funds.

---

**19:29** Hugh K:  
それは素晴らしいことです

> **Analyst Observation**
>
> Repeated affirmation.

---

**19:35** チェ・ジュン:  
はい、次の旅行に向けて一歩また前進しました

> **Analyst Observation**
>
> Personalizes success: links earnings to recruiter’s travel goals, builds aspirational narrative.

---

**19:38** Hugh K:  
よかったですね。私は自分のチャンスを待ちます。

> **Analyst Observation**
>
> Candidate expresses patience and anticipation for their own success.

---

**19:38** チェ・ジュン:  
はい、私はちょうど出金しました。承認されて入金されるのを待っています

> **Analyst Observation**
>
> Recruiter claims to have just initiated withdrawal, adds social proof that the system pays out.

---

**19:42** チェ・ジュン:  
お金を受け取りました。また、この注文を完了するのを手伝ってくれてありがとうございます

> **Analyst Observation**
>
> Confirms receipt of funds and thanks candidate, closes the loop on the first real transaction.

---

**19:42** チェ・ジュン:  
チャージ金額：230 ドル 利益：22 ドル 暗号通貨の追加収益（30%）：69 ドル 合計：321 ドル 電子注文のため配送は不要です。

> **Analyst Observation**
>
> Detailed breakdown of the transaction: charge, profit, 30% crypto bonus, total. Emphasizes “no shipping needed” for e-orders.
>
> 📎 Related Screenshot  
![`CTI-2026-07_financial_transaction_breakdown.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_financial_transaction_breakdown.png)

---

**19:43** チェ・ジュン:  
ちょうど忘れていたのですが、研修が終了したらカスタマーサポートに連絡して新人特典の申請が可能です

> **Analyst Observation**
>
> Introduces “newcomer bonus” available post-training, additional incentive to engage support.

---

**19:51** Hugh K:  
なるほど、いいですね。カスタマーサポートには何と言えばいいですか？

> **Analyst Observation**
>
> Candidate asks for script, wants to ensure correct wording to claim bonus.

---

**19:52** チェ・ジュン:  
新人報酬で 5 ドルから 150 ドルの報酬を得ることができます。福利は良好です

> **Analyst Observation**
>
> States bonus range ($5–$150) and describes benefits as “good.”

---

**19:53** チェ・ジュン:  
こう言えます：(Choi Jun01) 店舗の注文はすでに処理されました。報酬をリクエストします。店舗名：(あなた自身の店舗名)

> **Analyst Observation**
>
> Provides exact script including recruiter’s store ID (“Choi Jun01”) as reference. Candidate must insert their own store name.

---

**19:53** チェ・ジュン:  
店名を忘れずに書いてね

> **Analyst Observation**
>
> Reminder to include store name, critical for bonus attribution.

---

**20:07** チェ・ジュン:  
受け取りましたか？

> **Analyst Observation**
>
> Follow-up after ~14 minutes of silence.

---

**20:09** Hugh K:  
はい、バウチャーを受け取りました。どこで引き換えればよいですか？

> **Analyst Observation**
>
> Candidate confirms receipt of voucher and asks where to redeem it.

---

**20:12** Hugh K:  
大丈夫です、見つかりました。自分がいくら受け取ったのかは、どうすればわかりますか？

> **Analyst Observation**
>
> Found redemption location; now asks how to check bonus amount.

---

**20:12** チェ・ジュン:  
はい、あなたの店舗を開いて私のためにスクリーンショットを撮ってください

> **Analyst Observation**
>
> Requests screenshot of store dashboard to verify bonus.

---

**20:18** チェ・ジュン:  
あなたは交換を見ましたか？

> **Analyst Observation**
>
> Follow-up question, possibly mistranslation of “Did you see the redemption button?”

---

**20:35** Hugh K:  
大丈夫です、見つかりました。「収益（earnings）」のところを確認したら、30 ドル入っていました。

> **Analyst Observation**
>
> Candidate located earnings section and reports $30 bonus received.

---

**20:37** チェ・ジュン:  
それも悪くないですね、30 ドルをもらえるのも悪くないです、はは

> **Analyst Observation**
>
> Light-hearted validation of $30 bonus.

---

**20:37** チェ・ジュン:  
数日前、新しく来た人が 120 元をもらった！

> **Analyst Observation**
>
> Social comparison: mentions another newcomer who received 120 CNY (~$17). Sets upper bound of bonus range.

---

**20:37** チェ・ジュン:  
でも、大丈夫ですよ、全くないよりはましですから~~

> **Analyst Observation**
>
> Reassures candidate that something is better than nothing.

---

**20:38** Hugh K:  
何もないよりはましです。ありがとうございます。

> **Analyst Observation**
>
> Candidate accepts the bonus graciously.

---

**20:38** Hugh K:  
彼らは運がいいですね。

> **Analyst Observation**
>
> Acknowledges others’ luck, shows awareness of bonus variability.

---

**20:39** チェ・ジュン:  
はい、そうです

> **Analyst Observation**
>
> Agreement.

---

**20:39** チェ・ジュン:  
の店舗は既にトラフィック申請を提出しており、1〜2 日以内に効果が見られる予定です

> **Analyst Observation**
>
> Mentions “traffic application” submitted for candidate’s store, implies upcoming order flow boost.

---

**20:40** Hugh K:  
わかりました、ありがとうございます。そろそろ寝ますね。よい夜をお過ごしください。

> **Analyst Observation**
>
> Candidate ends conversation for the night.

---

**20:40** チェ・ジュン:  
はい、それでは明日お会いしましょう

> **Analyst Observation**
>
> Confirms next-day follow-up.

---

**20:41** チェ・ジュン:  
素敵な夜をお過ごしください

> **Analyst Observation**
>
> Polite closing.

---

**20:41** チェ・ジュン:  
私もお風呂に入ります

> **Analyst Observation**
>
> Personal note, humanizes recruiter.

---

### 2026.07.23 Thursday

**18:42** Hugh K:  
こんばんは！今帰宅して、ストアにログインしました。こちらが現在の画面のスクリーンショットです。

> **Analyst Observation**
>
> Candidate initiates contact next evening, shares login status and screenshots.

---

**18:42** Hugh K:  
![`CTI-2026-07_training_store_dashboard-01.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_store_dashboard-01.png)

> **Analyst Observation**
>
> Screenshot of store dashboard.

---

**18:42** Hugh K:  
![`CTI-2026-07_training_store_dashboard-02.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_store_dashboard-02.png)

> **Analyst Observation**
>
> Additional screenshot showing order view.

---

**18:55** チェ・ジュン:  
こんばんは、もうチェックインしましたか？

> **Analyst Observation**
>
> Recruiter asks if candidate has “checked in,” referring to daily login bonus and task acknowledgment.

---

**18:56** チェ・ジュン:  
すごい、あなたの店にお客様が来て注文を購入しました

> **Analyst Observation**
>
> Announces first real customer order on candidate’s store, key milestone.

---

**18:56** チェ・ジュン:  
どうやって扱うか、まだ覚えていますか？

> **Analyst Observation**
>
> Tests candidate’s retention of training.

---

**18:56** Hugh K:  
はい、その通りでしたし、私はとても満足しています。

> **Analyst Observation**
>
> Confirms understanding and expresses satisfaction.

---

**18:57** チェ・ジュン:  
私はあなたの注文の利益を計算します

> **Analyst Observation**
>
> Offers to calculate profit, guides candidate through financials.

---

**18:57** チェ・ジュン:  
![`CTI-2026-07_training_store_dashboard-03.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_store_dashboard-03.png)

> **Analyst Observation**
>
> Likely a breakdown of order cost/profit.

---

**18:58** Hugh K:  
そうですね。商品を選んでから「次へ」をクリックすればいいんですよね？

> **Analyst Observation**
>
> Candidate walks through steps, select product, click “Next.”

---

**18:59** チェ・ジュン:  
この製品の注文価格は 125.36 米ドルです。原価は 112.82 米ドルです。私は 12.54 米ドルの利益を得られます。暗号通貨で支払うと、さらに 30& の報酬がもらえます

> **Analyst Observation**
>
> Provides order math: price, cost, profit ($12.54), plus 30% crypto bonus. Note: “30&” is likely typo for “30%.”

---

**18:59** チェ・ジュン:  
そういえば、前回おすすめした coincheck、もう登録しましたか？

> **Analyst Observation**
>
> Follows up on Coincheck registration, critical for funding this order.

---

**19:01** Hugh K:  
なるほど、わかりました。Coincheck には登録しましたが、まだ口座に入金はしていません。

> **Analyst Observation**
>
> Candidate registered but hasn’t deposited fiat/crypto yet.

---

**19:03** チェ・ジュン:  
はい、入金手続きを進めてください。私がサポートしますので、完了すれば顧客に商品を発送できます。このような模擬注文は通常、すぐに受け取りが確認できます

> **Analyst Observation**
>
> Urges deposit, promises support, and reiterates fast settlement for simulated orders.

---

**19:03** チェ・ジュン:  
それでは、あなたはどのように預金するか知っていますか？

> **Analyst Observation**
>
> Checks if candidate knows how to deposit, guides toward funding step.

---

**19:04** Hugh K:  
わかりました。進めます。

> **Analyst Observation**
>
> Confirms intent to proceed.

---

**19:05** Hugh K:  
手続きを進めようとしたところ、残高不足と表示されました。どうすればよいでしょうか？

> **Analyst Observation**
>
> Candidate hits “insufficient balance” error, first friction point in funding flow.

---

**19:05** チェ・ジュン:  
unsent a message.

> **Analyst Observation**
>
> Message unsent, content unknown.

---

**19:06** チェ・ジュン:  
あなたはこの取引を完了するために coincheck で入金する必要があります。昨日、私が自分の注文で完了させたのと同じように

> **Analyst Observation**
>
> Explicit instruction: deposit via Coincheck to complete transaction. References recruiter’s own success as model.

---

**19:08** Hugh K:  
ああ、そうですね、思い出しました。Coincheck の口座に資金を移動させてから、注文を出します。

> **Analyst Observation**
>
> Candidate recalls the process: fund Coincheck first, then place order.

---

**19:08** Hugh K:  
この注文はいつクライアントに送るべきですか？

> **Analyst Observation**
>
> Asks about timing for shipping to client.

---

**19:09** チェ・ジュン:  
この注文を完了すれば、出荷できます

> **Analyst Observation**
>
> Clarifies: shipping happens after order completion.

---

**19:09** チェ・ジュン:  
はい、この注文の資金を先に立て替えて発送を完了する必要があります

> **Analyst Observation**
>
> Reiterates upfront funding requirement: candidate must advance costs before shipping.

---

**19:10** Hugh K:  
なるほど、わかりました。送金が Coincheck のウォレットに反映されるまで時間がかかるかもしれないと思ったので、所要時間についてお聞きしていました。

> **Analyst Observation**
>
> Candidate explains their question was about transfer timing, not process.

---

**19:10** チェ・ジュン:  
今すぐ入金してください。そうすればすぐにそれを完了できます。受領後、報酬の引き出しを案内します

> **Analyst Observation**
>
> Urges immediate deposit, promises guidance on withdrawal after receipt.

---

**19:12** Hugh K:  
わかりました。進捗状況は随時お知らせしますね。今から銀行振込の手続きをします。

> **Analyst Observation**
>
> Candidate commits to bank transfer to fund Coincheck.

---

**19:12** チェ・ジュン:  
友達、この coincheck の入金は即時反映されます

> **Analyst Observation**
>
> Claims Coincheck deposits are instant, reduces perceived friction.

---

**19:12** チェ・ジュン:  
いいよ

> **Analyst Observation**
>
> Casual affirmation.

---

**19:15** Hugh K:  
ちなみに、出金できる金額に上限はありますか？昨日受け取った 30 ドル分の報酬が、自分の Coincheck（コインチェック）の口座にちゃんと届くかどうか試してみたかったんです。

> **Analyst Observation**
>
> Candidate asks about withdrawal limits and expresses desire to test $30 withdrawal to Coincheck.

---

**19:17** チェ・ジュン:  
限りない

> **Analyst Observation**
>
> States “no limit” on withdrawals.

---

**19:18** チェ・ジュン:  
あなたは自分の支払いアドレスをバインドしましたか？

> **Analyst Observation**
>
> Checks if candidate has bound a payout address.

---

**19:22** Hugh K:  
支払い用アドレスを紐付けていません。

> **Analyst Observation**
>
> Confirms no payout address linked yet.

---

**19:23** チェ・ジュン:  
はい、ERC-20 の受取アドレスを登録してから出金してください

> **Analyst Observation**
>
> Instructs to register an ERC-20 address (note: different chain from earlier TRC-20) before withdrawing.
>
> 📎 Related Screenshot  
![`CTI-2026-07_financial_erc20_address_instruction.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_financial_erc20_address_instruction.png)

---

**19:23** チェ・ジュン:  
あなたは Coincheck を開いて私にスクリーンショットを送ってもらえますか？そうすれば、私が案内します

> **Analyst Observation**
>
> Requests Coincheck screenshot to guide next steps.

---

**19:27** チェ・ジュン:  
友達、準備はできた？

> **Analyst Observation**
>
> Follow-up after 4 minutes.

---

**19:28** Hugh K:  
はい、準備はできています。少々お待ちください。

> **Analyst Observation**
>
> Confirms readiness.

---

**19:30** チェ・ジュン:  
そういえば、伝え忘れていましたが、注文がある場合は引き出しはできません。注文を完了してから引き出しが可能です。昨日報酬を受け取ったのに引き出していませんか？後で注文を全部完了させてからまとめて引き出せば大丈夫です。

> **Analyst Observation**
>
> New restriction: withdrawals blocked while orders are active. Advises completing all orders before bulk withdrawal. Contradicts earlier “daily withdrawal” claim.

---

**19:39** Hugh K:  
わかりました、それならそのようにしましょう。

> **Analyst Observation**
>
> Candidate accepts the new rule.

---

**19:40** チェ・ジュン:  
そうですね、では今はもうお金を預けましたか？

> **Analyst Observation**
>
> Returns to deposit status check.

---

**19:43** チェ・ジュン:  
今日の日本円から米ドルへの為替レートは、16400 円で 100 米ドルです

> **Analyst Observation**
>
> Provides FX rate (¥16,400 = $100), context for bank transfer amount.

---

**19:57** チェ・ジュン:  
ヒュー・チャネツァ、お元気ですか？

> **Analyst Observation**
>
> First use of full name in Katakana-style transcription (“Hugh Chanetsa”). Check-in after ~14 minutes.

---

**20:16** チェ・ジュン:  
ヒュー・チャネザ様、ご注文商品の発送に必要な金額はお支払い済みでしょうか？お支払い済みの場合は、お知らせください。すぐに今後の手続きについてご案内いたします。

> **Analyst Observation**
>
> Formal follow-up: asks if payment for shipping has been made. Offers to guide next steps upon confirmation.

---

**22:56** チェ・ジュン:  
もし寝ているなら、また明日。素敵な夜を、そして良い夢を。

> **Analyst Observation**
>
> End-of-day message, assumes candidate may be asleep.

---

### 2026.07.24 Friday

**11:06** チェ・ジュン:  
おはようございます！昨日、何かありましたか？メッセージに返信がなかったので気になっています。

> **Analyst Observation**
>
> Morning follow-up: expresses concern over no reply.

---

**12:08** チェ・ジュン:  
ヒュー・チャネツァさん、この仕事を続けたり、お金を稼いだりするのを望まなくなった場合は、他の人に任せられるように教えてください。「メッセージを送らない」とはどういう意味か分かりません。

> **Analyst Observation**
>
> Escalates tone: asks candidate to confirm if they’re quitting. References “not sending messages” as confusing behavior.
>
> 📎 Related Screenshot  
![`CTI-2026-07_financial_pressure_message.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_unitelmatch_reassurance_message.png)

---

**12:27** Message unsent.

> **Analyst Observation**
>
> Another unsent message, content unknown.

---

**13:38** チェ・ジュン:  
何かを送ってすぐに取り消しましたか？

> **Analyst Observation**
>
> Asks if candidate sent and immediately deleted something.

---

**13:39** チェ・ジュン:  
この製品の注文をできるだけ早く完了させ、お客様に発送する必要があります。

> **Analyst Observation**
>
> Reiterates urgency: complete order and ship ASAP.

---

### 2026.07.25 Saturday

**11:25** チェ・ジュン:  
おはようございます、Hugh Chanetsa。メッセージを見ているのに返信がないので、意味がわかりません。もし仕事を続けたくないのであれば、お知らせください

> **Analyst Observation**
>
> Third day of follow-up. Accuses candidate of seeing messages but not replying. Repeats quit-or-continue ultimatum.

---

### 2026.07.26 Sunday

**11:05** チェ・ジュン:  
🌸おはようございます！今日の陽ざしがあなたに温かさを届け、そよ風が素敵な気分にしてくれますように。

> **Analyst Observation**
>
> Returns to warm greeting style, possible reset of tone after pressure.

---

**19:10** チェ・ジュン:  
病気で動けないわけじゃないですよね？

> **Analyst Observation**
>
> Direct, slightly confrontational check: “You’re not sick and unable to move, right?” Escalates concern into implied accountability.

---

# Analyst Notes

## Behavioral Assessment

This phase demonstrates a clear shift in campaign objectives. Having successfully established trust and normalized operational routines, the recruiter introduces financial participation without significantly altering their communication style.

The gradual progression from employment discussions to financial activities reduces perceived risk and increases the likelihood of continued compliance.

---

## Financial Escalation Pattern

Observed progression includes:

1. Initial employment opportunity.
2. Structured onboarding.
3. Routine operational tasks.
4. Continued recruiter support.
5. Introduction of financial concepts.
6. Cryptocurrency-related activities.
7. Deposit and withdrawal guidance.

This progression reflects deliberate commitment escalation rather than isolated financial requests.

---

## Social Engineering Assessment

Observed techniques include:

- Authority reinforcement.
- Continued trust maintenance.
- Financial normalization.
- Incremental commitment.
- Reassurance following user concerns.
- Framing deposits as routine operational procedures.

The communication avoids creating urgency and instead presents financial participation as a natural continuation of previously established workflows.

---

## Indicators Identified

Potential indicators observed during this phase include:

- Introduction of cryptocurrency-related terminology.
- Financial account discussions.
- Deposit instructions.
- Withdrawal procedures.
- Continued recruiter reassurance during financial interactions.
- Persistent use of replacement onboarding platforms.

These indicators significantly increased analytical confidence regarding the campaign's underlying objectives.

---

## Related Evidence

| Evidence ID | Description |
|-------------|-------------|
| [COMM-003](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Recruiter_Communications/COMM-003_Platform_Migration.md) | Platform Migration   |
| [COMM-004](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Recruiter_Communications/COMM-004_Operational_Training.md) | Operational Training |
| [COMM-006](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Recruiter_Communications/COMM-006_Campaign_Closure.md) | Campaign Closure     |

---

## Related Analysis

- [`Confidence_Assessment.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Confidence_Assessment.md)
- [`Detection_Opportunities.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [`Executive_Report.pdf`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Executive_Report.pdf)
- [`Findings.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Findings.md)
- [`Indicators_of_Compromise.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Indicators_of_Compromise.md)
- [`Social_Engineering_Analysis.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)

---

# Intelligence Assessment

## Campaign Evolution

This phase represents the most significant behavioral transition observed during the investigation.

The campaign progresses beyond recruitment and operational guidance into direct financial interaction while maintaining the same recruiter relationship established during earlier phases.

The consistency of communication throughout this transition demonstrates a structured social engineering methodology designed to minimize participant resistance.

---

## Confidence Level

**High**

The observed financial discussions originate directly from first-hand recruiter communications collected during the investigation.

---

## Intelligence Value

**Very High**

This evidence provides direct insight into the campaign's progression toward financial engagement and represents one of the strongest behavioral indicators documented throughout the investigation.

The observations recorded during this phase directly informed the investigation's findings, confidence assessment, and defensive recommendations.

---

# Detection Opportunities

Organizations should consider monitoring for behavioral indicators including:

- Employment onboarding workflows that transition into cryptocurrency discussions.
- Recruiters requesting deposits or explaining digital asset transactions.
- Financial activities occurring shortly after structured onboarding.
- Repeated reassurance regarding financial participation.
- Continued migration between onboarding platforms during financial interactions.

These behaviors may indicate recruitment campaigns employing progressive financial escalation techniques.

---

# Evidence Integrity Statement

This document is an evidence artifact produced during a structured Cyber Threat Intelligence (CTI) investigation.

The transcript has been converted into Markdown format solely to improve readability and repository organization.

No conversational content has been modified, removed, or reordered.

---

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     