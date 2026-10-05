# COMM-004 — Operational Training

## Evidence Metadata

| Field | Value |
|-------|-------|
| **Evidence ID**       | COMM-004                                                                                                  |
| **Evidence Type**     | Recruiter Communication                                                                                   |
| **Campaign Phase**    | Operational Training                                                                                      |
| **Collection Method** | Direct Communication                                                                                      |
| **Source**            | [Recruiter Chat Transcript](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Recruiter_Communications/Recruiter_Chat_Transcript.md)                                                                                 |
| **Integrity**         | Original conversation preserved. Formatting converted to Markdown only.                                   |
| **Related Domains**   | `unitelmatch.top`, `unitelmatch.cc`, `unitelmatch.cyou`                                                         |
| **Related Analysis**  | [Attack_Lifecycle.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md), [Social_Engineering_Analysis.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md), [Confidence_Assessment.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Confidence_Assessment.md), [Detection_Opportunities.md](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md) |

---

# Executive Summary

This evidence documents the operational training phase of the recruitment campaign. Following successful onboarding, the recruiter transitioned from registration assistance to structured operational guidance, introducing routine tasks, performance expectations, and continuous supervision.

During this phase, the investigator observed a highly organized workflow designed to normalize platform usage and establish habitual interaction. Recruiter communications became increasingly task-oriented while maintaining a supportive tone intended to reinforce trust and encourage continued participation.

No malware delivery, credential theft, or technical exploitation was directly observed during this phase. Instead, campaign progression relied primarily on behavioral manipulation and gradual commitment escalation.

---

# Investigation Relevance

This evidence supports the following investigation artifacts:

- Campaign Overview
- Investigation Timeline
- Social Engineering Analysis
- Attack Lifecycle Analysis
- Findings
- Confidence Assessment
- Detection Opportunities

---

# Campaign Phase

**Phase:** Operational Training

### Primary Objectives Observed

- Introduction of routine operational tasks.
- Reinforcement of platform familiarity.
- Continued recruiter supervision.
- Progressive normalization of campaign activities.
- Establishment of recurring user engagement.
- Preparation for later financial interactions.

---

# Key Observations

- Recruiter provides detailed task instructions.
- User is encouraged to perform repetitive platform activities.
- Positive reinforcement follows task completion.
- Performance expectations are gradually introduced.
- Communication remains frequent and supportive.
- Operational routines become increasingly normalized.

---

# Transcript

> **Note**
>
> The following transcript has been preserved in its original form. Only formatting has been modified to improve readability within this repository. No conversational content has been altered, omitted, or reordered.

---

# Phase: Operational Training

**Date:** 2026.07.22  
**Participants:** チェ・ジュン (Choi Jun) and Hugh K (Hugh Chanetsa)

---

## Conversation Log

**16:09** チェ・ジュン:  
購入者の購入金額は 246.62 ドルです。製品コストは 221.96 ドルです。私たちの利益は 24.66 ドルです。さらに、暗号通貨を使って前払いを行うと、30％のボーナスを追加で受け取れます

> **Analyst Observation**
>
> First concrete financial breakdown: buyer amount, product cost, and profit margin. Introduces a crypto prepayment incentive (+30% bonus), framing it as an easy way to boost earnings.

---

**16:10** チェ・ジュン:  
はい、今すぐそれを完了すれば 24.66 ドルの利益を得ることができます。今すぐ完了して顧客に発送してください

> **Analyst Observation**
>
> Urgency cue: “complete now” to secure profit. Links immediate action to tangible reward, a common persuasion tactic in task-based onboarding.

---

**16:10** Hugh K:  
すごく良さそうですね！

> **Analyst Observation**
>
> Candidate responds positively, signaling initial buy-in to the profit model.

---

**16:11** チェ・ジュン:  
注文の処理方法についてご案内する前に、プラットフォームの安定した成長を維持するための基本的なモデルを共有いたします

> **Analyst Observation**
>
> Recruiter pauses task execution to explain the “basic model.” This builds a narrative of legitimacy and long-term stability before introducing financial commitments.

---

**16:12** チェ・ジュン:  
はい、利益はまだあります。私が別に得た 30％の 66 ドルを加えると、合計で 90 ドル稼ぐことができます

> **Analyst Observation**
>
> Recalculates potential earnings by adding the 30% crypto bonus ($66) to base profit ($24.66), rounding to ~$90. Reinforces the upside of using crypto.

---

**16:12** Hugh K:  
いいね！

> **Analyst Observation**
>
> Continued enthusiasm. Candidate remains engaged and receptive.

---

**16:13** チェ・ジュン:  
TikTok は托管取引モデルと 48 時間の返品期間を採用して、購入者の信頼を築いています。購入者が注文すると、プラットフォームは支払いを保留し、すぐに販売者に支払いません

> **Analyst Observation**
>
> Introduces “TikTok” as the platform and describes an escrow-like model with 48-hour return window. Positions fund withholding as a trust-building measure for buyers.

---

**16:13** チェ・ジュン:  
しかし、サプライヤーは出荷前の支払いを要求するため、売り手は製品のコストを事前に立て替える必要があります💰

> **Analyst Observation**
>
> First explicit mention of upfront capital requirement: sellers must “advance” product costs before shipment. This is the core financial commitment of the scheme.
>
> 📎 Related Screenshot  
> ![`CTI-2026-07_training_upfront_cost_explanation.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_upfront_cost_explanation.png)

---

**16:13** Hugh K:  
理解した

> **Analyst Observation**
>
> Candidate acknowledges understanding without objection.

---

**16:13** チェ・ジュン:  
なぜ購入者が既に支払いを済ませているのに、まだこのようなことをする必要があるのか疑問に思うかもしれません

> **Analyst Observation**
>
> Anticipates skepticism: why must sellers pay if buyers already paid? Preempts doubt by preparing to justify the model.

---

**16:14** Hugh K:  
正しい

> **Analyst Observation**
>
> Candidate validates the recruiter’s assumption that this is a natural question.

---

**16:14** チェ・ジュン:  
はい、今のお店はまだ新しいですが、時間が経つと私たちのお店はもっと多くの顧客を引き付けて、彼らが好きな商品を購入してくれるようになります。そうすれば、私たちの利益も増えます

> **Analyst Observation**
>
> Shifts to growth narrative: current store is new, but will scale over time. Ties future customer volume to increased profits, encouraging long-term participation.

---

**16:15** チェ・ジュン:  
これは、売上代金を差し押さえることで、プラットフォームが返品や返金をスムーズに処理でき、売り手が返金を拒否するなどのトラブルを避けられるからです

> **Analyst Observation**
>
> Provides rationale for fund withholding: enables smooth returns/refunds and prevents seller refusal. Frames it as protective infrastructure, not a risk to sellers.

---

**16:15** チェ・ジュン:  
これらの重要な部分をゆっくりと閲覧できます。ご不明な点がありましたら、直接私に質問してください。

> **Analyst Observation**
>
> Invites questions and encourages careful review. Creates an impression of transparency and support.

---

**16:16** Hugh K:  
承知いたしました。質問が生じた際にはお尋ねします。

> **Analyst Observation**
>
> Candidate confirms understanding and agrees to ask questions if needed—maintains cooperative tone.

---

**16:17** チェ・ジュン:  
はい、あなたは素晴らしいです。理解力がとても高いです

> **Analyst Observation**
>
> Positive reinforcement: praises candidate’s comprehension. Builds rapport and reduces friction before introducing next steps.

---

**16:17** チェ・ジュン:  
注文がなければ費用はかかりません。注文がある場合は、次のように理解できます。売り手は仕入先から原価で商品を購入し、買い手に転売します。プラットフォームは物流とアフターサービスを担当し、注文が完了して利益を得ます

> **Analyst Observation**
>
> Clarifies cost structure: no cost without orders. Reiterates the reseller model—buy at cost, sell to buyer, platform handles logistics. Profit is realized upon order completion.

---

**16:18** Hugh K:  
それによって生活が楽になります。

> **Analyst Observation**
>
> Candidate expresses personal benefit: “makes life easier.” Indicates emotional investment in the opportunity.

---

**16:18** チェ・ジュン:  
製品はサプライヤーから直接発送されるため、製品の問題については一切責任を負いません。アフターサービスは TikTok が担当します。そのため、事前にかかった費用がいくらであっても、TikTok は返金を行い、リスクはありません

> **Analyst Observation**
>
> Risk mitigation claim: no responsibility for product issues; TikTok handles after-sales and guarantees refunds. Explicitly states “no risk,” a key reassurance ahead of financial commitment.

---

**16:19** Hugh K:  
すみませんが、少し中断してもよろしいでしょうか？空港へ父を迎えに行かなければならないんです。1 時間ほどで戻ります。

> **Analyst Observation**
>
> Candidate requests a short break for a real-world obligation (picking up father at airport). Maintains polite tone and specifies return time (~1 hour).

---

**16:19** チェ・ジュン:  
はい、私はここでお金を稼いで旅行に出かけることを確認しました。彼は私の生活を良い方向に変えるのを助けてくれると思います

> **Analyst Observation**
>
> Recruiter’s response appears misaligned—mentions personal earnings and travel, possibly a copied/pasted message or translation artifact. Does not directly acknowledge the break request.

---

**16:20** Hugh K:  
絶対に

> **Analyst Observation**
>
> Candidate responds affirmatively (“Absolutely”), likely to the sentiment about life improvement, not the break request.

---

**16:20** チェ・ジュン:  
はい、それでは道中気をつけて運転してください。戻ったら新人ギフトの受け取り方を案内します

> **Analyst Observation**
>
> Now acknowledges the break: wishes safe driving and promises to guide on “newcomer gift” upon return. Introduces a new incentive (gift/bonus) for continuing.

---

**16:21** チェ・ジュン:  
今の福利厚生はとても良く、新人が店を開くと福利がもらえます

> **Analyst Observation**
>
> Expands on newcomer benefits: “welfare” or bonuses for opening a store. Reinforces value proposition during the pause.

---

**16:21** チェ・ジュン:  
それでは、後で戻って続けましょう

> **Analyst Observation**
>
> Confirms pause and plans to resume later. Maintains momentum despite interruption.

---

**18:04** Hugh K:  
準備ができました。お待たせしました。

> **Analyst Observation**
>
> Candidate returns after ~1 hour 45 mins (slightly longer than stated). Reaffirms readiness and apologizes for the wait.

---

**18:08** チェ・ジュン:  
大丈夫、もう戻ってきたよね？

> **Analyst Observation**
>
> Recruiter confirms return. Tone is casual and reassuring.

---

**18:08** チェ・ジュン:  
私はトレーニングの最後のステップである注文処理を案内します。私たちは 48 時間以内にすべての注文を処理する必要があります

> **Analyst Observation**
>
> Transitions to “final step” of training: order processing. Reiterates the 48-hour SLA, creating urgency and framing next actions as time-sensitive.

---

**18:09** チェ・ジュン:  
立て替える必要がある製品費用は 221 ドルですが、ストアの残高が不足しています。リチャージの詳細を申請するために、ヘルプセンターに連絡してください

> **Analyst Observation**
>
> First concrete funding request: $221 needed to cover product costs. Claims store balance is insufficient and directs candidate to “contact Help Center” to apply for recharge details.
>
> 📎 Related Screenshot  
> ![`CTI-2026-07_training_recharge_instruction.png`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Screenshots/CTI-2026-07_training_recharge_instruction.png)

---

**18:09** Hugh K:  
はい！

> **Analyst Observation**
>
> Immediate affirmative response. Candidate appears ready to proceed with funding step.

---

**18:09** Hugh K:  
完璧！

> **Analyst Observation**
>
> Enthusiastic closure to this segment. Candidate signals full alignment and readiness to move forward.

---

# Analyst Notes

## Behavioral Assessment

The communication transitions from onboarding assistance to operational management. Rather than merely assisting the investigator, the recruiter begins directing routine activities intended to establish long-term engagement with the platform.

Frequent communication, positive feedback, and structured daily objectives contribute to the normalization of campaign behavior and reduce the likelihood of disengagement.

---

## Operational Characteristics

Observed operational behaviors include:

- Structured daily workflow.
- Clearly defined task progression.
- Continuous recruiter availability.
- Performance monitoring.
- Reinforcement through positive feedback.
- Consistent operational guidance.

These characteristics suggest a standardized operating procedure rather than ad hoc recruiter interaction.

---

## Social Engineering Assessment

Observed techniques include:

- Commitment escalation.
- Routine establishment.
- Authority reinforcement.
- Positive reinforcement.
- Reduction of perceived risk through familiarity.
- Continuous engagement.

Rather than applying pressure, the recruiter encourages incremental participation, allowing trust to develop naturally over multiple interactions.

---

## Campaign Progression

The campaign evolves as follows:

```text
Recruiter Contact
        │
        ▼
Platform Registration
        │
        ▼
Operational Training
        │
        ▼
Routine Task Execution
        │
        ▼
Performance Reinforcement
```

This phase represents the transition from initial recruitment to sustained operational engagement.

---

## Related Evidence

| Evidence ID | Description |
|-------------|-------------|
| [COMM-002](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Recruiter_Communications/COMM-002_Onboarding.md) | Onboarding           |
| [COMM-003](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Recruiter_Communications/COMM-003_Platform_Migration.md) | Platform Migration   |
| [COMM-005](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Evidence/Recruiter_Communications/COMM-005_Financial_Escalation.md) | Financial Escalation |

---

## Related Analysis

- [`Analysis/Attack_Lifecycle.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Attack_Lifecycle.md)
- [`Analysis/Social_Engineering_Analysis.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Social_Engineering_Analysis.md)
- [`Analysis/Confidence_Assessment.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Confidence_Assessment.md)
- [`Analysis/Detection_Opportunities.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/Analysis/Detection_Opportunities.md)
- [`docs/Investigation_Timeline.md`](https://github.com/Hugh-Kumbi/Operation-Phantom-Store/blob/main/docs/Investigation_Timeline.md)

---

# Intelligence Assessment

## Campaign Evolution

This phase demonstrates that the campaign was designed to maintain long-term participant engagement through structured operational routines rather than immediate financial exploitation.

The observed workflow emphasizes consistency, familiarity, and gradual progression, supporting the assessment that behavioral conditioning formed a central component of the campaign.

---

## Confidence Level

**High**

This assessment is based on direct observation of recruiter communications and documented operational guidance collected throughout the investigation.

---

## Intelligence Value

**High**

This evidence provides insight into the campaign's operational methodology, illustrating how sustained recruiter interaction was used to normalize platform activities and strengthen participant commitment before the campaign advanced to subsequent stages.

---

# Detection Opportunities

Organizations may consider monitoring for behavioral indicators including:

- Repeated recruiter communications encouraging routine platform activity.
- Structured onboarding followed by recurring operational tasks.
- Persistent user engagement with newly registered onboarding domains.
- Frequent task completion messaging accompanied by positive reinforcement.
- Continuous recruiter support extending beyond initial registration.

These indicators may help identify campaigns employing prolonged engagement strategies rather than immediate exploitation.

---

# Evidence Integrity Statement

This document is an evidence artifact produced during a structured Cyber Threat Intelligence (CTI) investigation.

The transcript has been converted into Markdown format solely to improve readability and repository organization.

No conversational content has been modified, removed, or reordered.

## Document Information

**Last Updated:**      September 2026  
**Analyst:**           Hugh Chanetsa  
**Assessment Type:**   OSINT Investigation       
**GitHub:**            https://github.com/Hugh-Kumbi/Operation-Phantom-Store     