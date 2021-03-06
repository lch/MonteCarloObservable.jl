"""
A package for handling observables in a Markov Chain Monte Carlo simulation.

See http://github.com/crstnbr/MonteCarloObservable.jl for more information.
"""
module MonteCarloObservable

    using Statistics
    using JLD, EllipsisNotation
    import HDF5

    include("helpers.jl")
    include("observable.jl")

    include("binning.jl")

    # Jackknife
    include("Jackknife.jl")
    export Jackknife

    # general
    export Observable, DiskObservable
    export @obs, @diskobs

    # statistics
    export tau, iswithinerrorbars
    export error, error_naive, error_with_convergence
    export binning_error, jackknife_error
    # export isconverged # experimental
    export mean, var, std

    # interface
    export add!, push!, reset!
    export timeseries, ts
    export rename, name
    export inmemory, isinmemory, length, eltype, getindex, view, isempty, ndims, size, iterate

    # io
    export saveobs, loadobs, listobs, rmobs
    export export_result, export_error
    export loadobs_frommemory
    export timeseries_frommemory, timeseries_frommemory_flat, mean_frommemory, error_frommemory
    export timeseries_flat, ts_flat
    export getfrom
    export flush

    # plotting
    # export plot, hist, binningplot, errorplot, corrplot
end
