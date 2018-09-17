module POMDPModelTools

using POMDPs
using Random

import POMDPs: actions, n_actions, actionindex
import POMDPs: states, n_states, stateindex
import POMDPs: observations, n_observations, obsindex
import POMDPs: sampletype, generate_sr, initialstate, isterminal, discount
# import POMDPs: Updater, update, initialize_belief, pdf, mode, updater
import POMDPs: implemented
import Distributions: pdf, mode, mean, support
import Random: rand, rand!
import Statistics: mean
import Base: ==

export
    render
include("visualization.jl")

# info interface
export
    generate_sri,
    generate_sori,
    action_info,
    solve_info,
    update_info
include("info.jl")

export
    ordered_states,
    ordered_actions,
    ordered_observations
include("ordered_spaces.jl")

export
    TerminalState,
    terminalstate
include("terminal_state.jl")

export GenerativeBeliefMDP
include("generative_belief_mdp.jl")

export FullyObservablePOMDP
include("fully_observable_pomdp.jl")

export UnderlyingMDP
include("underlying_mdp.jl")

export obs_weight
include("obs_weight.jl")

export
    probability_check,
    obs_prob_consistency_check,
    trans_prob_consistency_check

# tools for distributions
include("distributions/distributions_jl.jl")

export
    weighted_iterator
include("distributions/weighted_iteration.jl")

export
    SparseCat
include("distributions/sparse_cat.jl")

export
    BoolDistribution
include("distributions/bool.jl")

export
    Deterministic
include("distributions/deterministic.jl")

# convenient implementations
include("convenient_implementations.jl")

end # module
