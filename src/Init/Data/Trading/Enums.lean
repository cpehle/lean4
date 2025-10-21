/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lean 4 Developers
-/
prelude
import Init.Data.String.Basic

namespace Trading

/-- Represents what kind of Activity an instance of TradeActivity or NonTradeActivity is.
Please see https://alpaca.markets/docs/api-references/broker-api/accounts/account-activities/#enumactivitytype
for descriptions of each of the types -/
inductive ActivityType
  | FILL
  | ACATC
  | ACATS
  | CFEE
  | CIL
  | CSD
  | CSW
  | DIV
  | DIVCGL
  | DIVCGS
  | DIVNRA
  | DIVROC
  | DIVTXEX
  | DIVWH
  | EXTRD
  | FEE
  | FXTRD
  | INT
  | INTPNL
  | JNLC
  | JNLS
  | MA
  | MEM
  | NC
  | OCT
  | OPASN
  | OPCSH
  | OPEXC
  | OPEXP
  | OPTRD
  | PTC
  | REORG
  | SPIN
  | SPLIT
  | SWP
  | VOF
  | WH
  deriving Repr, DecidableEq

namespace ActivityType

def toString : ActivityType → String
  | FILL => "FILL"
  | ACATC => "ACATC"
  | ACATS => "ACATS"
  | CFEE => "CFEE"
  | CIL => "CIL"
  | CSD => "CSD"
  | CSW => "CSW"
  | DIV => "DIV"
  | DIVCGL => "DIVCGL"
  | DIVCGS => "DIVCGS"
  | DIVNRA => "DIVNRA"
  | DIVROC => "DIVROC"
  | DIVTXEX => "DIVTXEX"
  | DIVWH => "DIVWH"
  | EXTRD => "EXTRD"
  | FEE => "FEE"
  | FXTRD => "FXTRD"
  | INT => "INT"
  | INTPNL => "INTPNL"
  | JNLC => "JNLC"
  | JNLS => "JNLS"
  | MA => "MA"
  | MEM => "MEM"
  | NC => "NC"
  | OCT => "OCT"
  | OPASN => "OPASN"
  | OPCSH => "OPCSH"
  | OPEXC => "OPEXC"
  | OPEXP => "OPEXP"
  | OPTRD => "OPTRD"
  | PTC => "PTC"
  | REORG => "REORG"
  | SPIN => "SPIN"
  | SPLIT => "SPLIT"
  | SWP => "SWP"
  | VOF => "VOF"
  | WH => "WH"

instance : ToString ActivityType := ⟨toString⟩

/-- A simple check to see if the ActivityType represents a type that belongs to TradeActivity's.
Currently, the check is just against FILL. However, this might change in the future. -/
def isTradeActivity (a : ActivityType) : Bool :=
  match a with
  | FILL => true
  | _ => false

/-- Similar to isTradeActivity but for raw string data that hasn't been parsed into an enum yet.
Useful for deserialization. -/
def isStrTradeActivity (value : String) : Bool :=
  value == "FILL"

end ActivityType

/-- Represents the type of TradeActivity.
Please see https://alpaca.markets/docs/api-references/broker-api/accounts/account-activities/#attributes -/
inductive TradeActivityType
  | PARTIAL_FILL
  | FILL
  deriving Repr, DecidableEq

namespace TradeActivityType

def toString : TradeActivityType → String
  | PARTIAL_FILL => "partial_fill"
  | FILL => "fill"

instance : ToString TradeActivityType := ⟨toString⟩

end TradeActivityType

/-- Represents the status of a NonTradeActivity.
Please see https://alpaca.markets/docs/api-references/broker-api/accounts/account-activities/#enumaccountactivity -/
inductive NonTradeActivityStatus
  | EXECUTED
  | CORRECT
  | CANCELED
  deriving Repr, DecidableEq

namespace NonTradeActivityStatus

def toString : NonTradeActivityStatus → String
  | EXECUTED => "executed"
  | CORRECT => "correct"
  | CANCELED => "canceled"

instance : ToString NonTradeActivityStatus := ⟨toString⟩

end NonTradeActivityStatus

/-- Represents what class of order this is.
The order classes supported by Alpaca vary based on the order's security type:
- Equity trading: simple (or ""), oco, oto, bracket.
- Options trading: simple (or ""), mleg (required for multi-leg complex options strategies).
- Crypto trading: simple (or ""). -/
inductive OrderClass
  | SIMPLE
  | MLEG
  | BRACKET
  | OCO
  | OTO
  deriving Repr, DecidableEq

namespace OrderClass

def toString : OrderClass → String
  | SIMPLE => "simple"
  | MLEG => "mleg"
  | BRACKET => "bracket"
  | OCO => "oco"
  | OTO => "oto"

instance : ToString OrderClass := ⟨toString⟩

end OrderClass

/-- Represents what type of order this is.
The order types supported by Alpaca vary based on the order's security type:
- Equity trading: market, limit, stop, stop_limit, trailing_stop.
- Options trading: market, limit, stop, stop_limit.
- Crypto trading: market, limit, stop_limit. -/
inductive OrderType
  | MARKET
  | LIMIT
  | STOP
  | STOP_LIMIT
  | TRAILING_STOP
  deriving Repr, DecidableEq

namespace OrderType

def toString : OrderType → String
  | MARKET => "market"
  | LIMIT => "limit"
  | STOP => "stop"
  | STOP_LIMIT => "stop_limit"
  | TRAILING_STOP => "trailing_stop"

instance : ToString OrderType := ⟨toString⟩

end OrderType

/-- Represents what side this order was executed on. -/
inductive OrderSide
  | BUY
  | SELL
  deriving Repr, DecidableEq

namespace OrderSide

def toString : OrderSide → String
  | BUY => "buy"
  | SELL => "sell"

instance : ToString OrderSide := ⟨toString⟩

end OrderSide

/-- Represents the various states an Order can be in.
Please see https://alpaca.markets/docs/api-references/broker-api/trading/orders/#order-status for more info -/
inductive OrderStatus
  | NEW
  | PARTIALLY_FILLED
  | FILLED
  | DONE_FOR_DAY
  | CANCELED
  | EXPIRED
  | REPLACED
  | PENDING_CANCEL
  | PENDING_REPLACE
  | PENDING_REVIEW
  | ACCEPTED
  | PENDING_NEW
  | ACCEPTED_FOR_BIDDING
  | STOPPED
  | REJECTED
  | SUSPENDED
  | CALCULATED
  | HELD
  deriving Repr, DecidableEq

namespace OrderStatus

def toString : OrderStatus → String
  | NEW => "new"
  | PARTIALLY_FILLED => "partially_filled"
  | FILLED => "filled"
  | DONE_FOR_DAY => "done_for_day"
  | CANCELED => "canceled"
  | EXPIRED => "expired"
  | REPLACED => "replaced"
  | PENDING_CANCEL => "pending_cancel"
  | PENDING_REPLACE => "pending_replace"
  | PENDING_REVIEW => "pending_review"
  | ACCEPTED => "accepted"
  | PENDING_NEW => "pending_new"
  | ACCEPTED_FOR_BIDDING => "accepted_for_bidding"
  | STOPPED => "stopped"
  | REJECTED => "rejected"
  | SUSPENDED => "suspended"
  | CALCULATED => "calculated"
  | HELD => "held"

instance : ToString OrderStatus := ⟨toString⟩

end OrderStatus

/-- This represents the category to which the asset belongs to.
It serves to identify the nature of the financial instrument, with options
including "us_equity" for U.S. equities, "us_option" for U.S. options,
and "crypto" for cryptocurrencies. -/
inductive AssetClass
  | US_EQUITY
  | US_OPTION
  | CRYPTO
  | CRYPTO_PERP
  deriving Repr, DecidableEq

namespace AssetClass

def toString : AssetClass → String
  | US_EQUITY => "us_equity"
  | US_OPTION => "us_option"
  | CRYPTO => "crypto"
  | CRYPTO_PERP => "crypto_perp"

instance : ToString AssetClass := ⟨toString⟩

end AssetClass

/-- Represents the various states for an Asset's lifecycle -/
inductive AssetStatus
  | ACTIVE
  | INACTIVE
  deriving Repr, DecidableEq

namespace AssetStatus

def toString : AssetStatus → String
  | ACTIVE => "active"
  | INACTIVE => "inactive"

instance : ToString AssetStatus := ⟨toString⟩

end AssetStatus

/-- Represents the current exchanges Alpaca supports. -/
inductive AssetExchange
  | AMEX
  | ARCA
  | ASCX
  | BATS
  | NYSE
  | NASDAQ
  | NYSEARCA
  | FTXU
  | CBSE
  | GNSS
  | ERSX
  | OTC
  | CRYPTO
  | EMPTY
  deriving Repr, DecidableEq

namespace AssetExchange

def toString : AssetExchange → String
  | AMEX => "AMEX"
  | ARCA => "ARCA"
  | ASCX => "ASCX"
  | BATS => "BATS"
  | NYSE => "NYSE"
  | NASDAQ => "NASDAQ"
  | NYSEARCA => "NYSEARCA"
  | FTXU => "FTXU"
  | CBSE => "CBSE"
  | GNSS => "GNSS"
  | ERSX => "ERSX"
  | OTC => "OTC"
  | CRYPTO => "CRYPTO"
  | EMPTY => ""

instance : ToString AssetExchange := ⟨toString⟩

end AssetExchange

/-- Represents what side this position is. -/
inductive PositionSide
  | SHORT
  | LONG
  deriving Repr, DecidableEq

namespace PositionSide

def toString : PositionSide → String
  | SHORT => "short"
  | LONG => "long"

instance : ToString PositionSide := ⟨toString⟩

end PositionSide

/-- Represents the various time in force options for an Order.
The Time-In-Force values supported by Alpaca vary based on the order's security type:
- Equity trading: day, gtc, opg, cls, ioc, fok.
- Options trading: day.
- Crypto trading: gtc, ioc. -/
inductive TimeInForce
  | DAY    -- Day order, valid only during regular trading hours
  | GTC    -- Good till canceled
  | OPG    -- Market/limit on open
  | CLS    -- Market/limit on close
  | IOC    -- Immediate or cancel
  | FOK    -- Fill or kill
  deriving Repr, DecidableEq

namespace TimeInForce

def toString : TimeInForce → String
  | DAY => "day"
  | GTC => "gtc"
  | OPG => "opg"
  | CLS => "cls"
  | IOC => "ioc"
  | FOK => "fok"

instance : ToString TimeInForce := ⟨toString⟩

end TimeInForce

/-- The general types of corporate action events.
Learn more: https://alpaca.markets/docs/api-references/trading-api/corporate-actions-announcements/ -/
inductive CorporateActionType
  | DIVIDEND
  | MERGER
  | SPINOFF
  | SPLIT
  deriving Repr, DecidableEq

namespace CorporateActionType

def toString : CorporateActionType → String
  | DIVIDEND => "dividend"
  | MERGER => "merger"
  | SPINOFF => "spinoff"
  | SPLIT => "split"

instance : ToString CorporateActionType := ⟨toString⟩

end CorporateActionType

/-- The specific types of corporate actions. Each subtype is related to CorporateActionType.
Learn more: https://alpaca.markets/docs/api-references/trading-api/corporate-actions-announcements/ -/
inductive CorporateActionSubType
  | CASH
  | STOCK
  | MERGER_UPDATE
  | MERGER_COMPLETION
  | SPINOFF
  | STOCK_SPLIT
  | UNIT_SPLIT
  | REVERSE_SPLIT
  | RECAPITALIZATION
  deriving Repr, DecidableEq

namespace CorporateActionSubType

def toString : CorporateActionSubType → String
  | CASH => "cash"
  | STOCK => "stock"
  | MERGER_UPDATE => "merger_update"
  | MERGER_COMPLETION => "merger_completion"
  | SPINOFF => "spinoff"
  | STOCK_SPLIT => "stock_split"
  | UNIT_SPLIT => "unit_split"
  | REVERSE_SPLIT => "reverse_split"
  | RECAPITALIZATION => "recapitalization"

instance : ToString CorporateActionSubType := ⟨toString⟩

end CorporateActionSubType

/-- The various statuses each brokerage account can take during its lifetime
See https://alpaca.markets/docs/broker/api-references/accounts/accounts/#account-status -/
inductive AccountStatus
  | ACCOUNT_CLOSED
  | ACCOUNT_UPDATED
  | ACTION_REQUIRED
  | ACTIVE
  | AML_REVIEW
  | APPROVAL_PENDING
  | APPROVED
  | DISABLED
  | DISABLE_PENDING
  | EDITED
  | INACTIVE
  | KYC_SUBMITTED
  | LIMITED
  | ONBOARDING
  | PAPER_ONLY
  | REAPPROVAL_PENDING
  | REJECTED
  | RESUBMITTED
  | SIGNED_UP
  | SUBMISSION_FAILED
  | SUBMITTED
  deriving Repr, DecidableEq

namespace AccountStatus

def toString : AccountStatus → String
  | ACCOUNT_CLOSED => "ACCOUNT_CLOSED"
  | ACCOUNT_UPDATED => "ACCOUNT_UPDATED"
  | ACTION_REQUIRED => "ACTION_REQUIRED"
  | ACTIVE => "ACTIVE"
  | AML_REVIEW => "AML_REVIEW"
  | APPROVAL_PENDING => "APPROVAL_PENDING"
  | APPROVED => "APPROVED"
  | DISABLED => "DISABLED"
  | DISABLE_PENDING => "DISABLE_PENDING"
  | EDITED => "EDITED"
  | INACTIVE => "INACTIVE"
  | KYC_SUBMITTED => "KYC_SUBMITTED"
  | LIMITED => "LIMITED"
  | ONBOARDING => "ONBOARDING"
  | PAPER_ONLY => "PAPER_ONLY"
  | REAPPROVAL_PENDING => "REAPPROVAL_PENDING"
  | REJECTED => "REJECTED"
  | RESUBMITTED => "RESUBMITTED"
  | SIGNED_UP => "SIGNED_UP"
  | SUBMISSION_FAILED => "SUBMISSION_FAILED"
  | SUBMITTED => "SUBMITTED"

instance : ToString AccountStatus := ⟨toString⟩

end AccountStatus

/-- Corporate action date types -/
inductive CorporateActionDateType
  | DECLARATION_DATE
  | EX_DATE
  | RECORD_DATE
  | PAYABLE_DATE
  deriving Repr, DecidableEq

namespace CorporateActionDateType

def toString : CorporateActionDateType → String
  | DECLARATION_DATE => "declaration_date"
  | EX_DATE => "ex_date"
  | RECORD_DATE => "record_date"
  | PAYABLE_DATE => "payable_date"

instance : ToString CorporateActionDateType := ⟨toString⟩

end CorporateActionDateType

/-- Trade event types -/
inductive TradeEvent
  | FILL
  | CANCELED
  | PENDING_NEW
  | NEW
  | PARTIAL_FILL
  deriving Repr, DecidableEq

namespace TradeEvent

def toString : TradeEvent → String
  | FILL => "fill"
  | CANCELED => "canceled"
  | PENDING_NEW => "pending_new"
  | NEW => "new"
  | PARTIAL_FILL => "partial_fill"

instance : ToString TradeEvent := ⟨toString⟩

end TradeEvent

/-- Query order status filter -/
inductive QueryOrderStatus
  | OPEN
  | CLOSED
  | ALL
  deriving Repr, DecidableEq

namespace QueryOrderStatus

def toString : QueryOrderStatus → String
  | OPEN => "open"
  | CLOSED => "closed"
  | ALL => "all"

instance : ToString QueryOrderStatus := ⟨toString⟩

end QueryOrderStatus

/-- Specifies when to run a DTBP check for an account.
NOTE: These values are currently the same as PDTCheck however they are not guaranteed to be in sync in the future.
Please see https://alpaca.markets/docs/api-references/broker-api/trading/trading-configurations/#attributes -/
inductive DTBPCheck
  | BOTH
  | ENTRY
  | EXIT
  deriving Repr, DecidableEq

namespace DTBPCheck

def toString : DTBPCheck → String
  | BOTH => "both"
  | ENTRY => "entry"
  | EXIT => "exit"

instance : ToString DTBPCheck := ⟨toString⟩

end DTBPCheck

/-- Specifies when to run a PDT check for an account.
NOTE: These values are currently the same as DTBPCheck however they are not guaranteed to be in sync in the future.
Please see https://alpaca.markets/docs/api-references/broker-api/trading/trading-configurations/#attributes -/
inductive PDTCheck
  | BOTH
  | ENTRY
  | EXIT
  deriving Repr, DecidableEq

namespace PDTCheck

def toString : PDTCheck → String
  | BOTH => "both"
  | ENTRY => "entry"
  | EXIT => "exit"

instance : ToString PDTCheck := ⟨toString⟩

end PDTCheck

/-- Used for controlling when an Account will receive a trade confirmation email.
Please see https://docs.alpaca.markets/reference/getaccountconfig -/
inductive TradeConfirmationEmail
  | ALL
  | NONE
  deriving Repr, DecidableEq

namespace TradeConfirmationEmail

def toString : TradeConfirmationEmail → String
  | ALL => "all"
  | NONE => "none"

instance : ToString TradeConfirmationEmail := ⟨toString⟩

end TradeConfirmationEmail

/-- Represents the contract type of options -/
inductive ContractType
  | CALL
  | PUT
  deriving Repr, DecidableEq

namespace ContractType

def toString : ContractType → String
  | CALL => "call"
  | PUT => "put"

instance : ToString ContractType := ⟨toString⟩

end ContractType

/-- Represents the exercise style of options -/
inductive ExerciseStyle
  | AMERICAN
  | EUROPEAN
  deriving Repr, DecidableEq

namespace ExerciseStyle

def toString : ExerciseStyle → String
  | AMERICAN => "american"
  | EUROPEAN => "european"

instance : ToString ExerciseStyle := ⟨toString⟩

end ExerciseStyle

/-- Represents the category of an Activity -/
inductive ActivityCategory
  | TRADE_ACTIVITY
  | NON_TRADE_ACTIVITY
  deriving Repr, DecidableEq

namespace ActivityCategory

def toString : ActivityCategory → String
  | TRADE_ACTIVITY => "trade_activity"
  | NON_TRADE_ACTIVITY => "non_trade_activity"

instance : ToString ActivityCategory := ⟨toString⟩

end ActivityCategory

/-- Represents position intent for options trading -/
inductive PositionIntent
  | BUY_TO_OPEN
  | BUY_TO_CLOSE
  | SELL_TO_OPEN
  | SELL_TO_CLOSE
  deriving Repr, DecidableEq

namespace PositionIntent

def toString : PositionIntent → String
  | BUY_TO_OPEN => "buy_to_open"
  | BUY_TO_CLOSE => "buy_to_close"
  | SELL_TO_OPEN => "sell_to_open"
  | SELL_TO_CLOSE => "sell_to_close"

instance : ToString PositionIntent := ⟨toString⟩

end PositionIntent

end Trading