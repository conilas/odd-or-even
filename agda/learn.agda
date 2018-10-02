module learn where
  data ℕ : Set where
    zero : ℕ
    suc : ℕ → ℕ

  _+_ : ℕ → ℕ → ℕ
  zero + m = m
  (suc n) + m = suc (n + m)

  data _odd : ℕ → Set where
    ONE : suc zero odd
    STEP : ∀ x → x odd → suc (suc x) odd

  proof₁ : suc ( suc (suc (suc (suc zero)))) odd
  proof₁ = STEP (suc (suc (suc zero))) (STEP (suc zero) ONE)

  proof₂ : suc (suc (zero)) odd
  proof₂ = STEP zero {!!}

  proof₃ : suc (suc (suc (suc zero))) odd
  proof₃ = STEP (suc (suc zero)) (STEP zero {!!})

  proof₄ : suc (suc (suc (suc (suc (suc (suc zero)))))) odd
  proof₄ = STEP (suc (suc (suc (suc (suc zero))))) (STEP (suc (suc (suc zero))) (STEP (suc zero) ONE))

  proof₅ : suc (suc (suc (suc (suc zero)))) odd
  proof₅ = STEP (suc (suc (suc zero))) (STEP (suc zero) ONE)

  proof₆ : suc (suc zero) odd
  proof₆ = STEP {!!} {!!}
