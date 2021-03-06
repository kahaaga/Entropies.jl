abstract type CountingBasedProbabilityEstimator <: ProbabilitiesEstimator end
export CountOccurrences
import DelayEmbeddings: AbstractDataset

"""
    CountOccurrences  <: CountingBasedProbabilityEstimator

A probabilities/entropy estimator based on straight-forward counting of distinct elements in
a univariate time series or multivariate dataset. From these counts, construct histograms.
Sum-normalize histograms to obtain probability distributions.
"""
struct CountOccurrences <: ProbabilitiesEstimator end

function probabilities(x::AbstractDataset, est::CountOccurrences)
    probabilities(x)
end
