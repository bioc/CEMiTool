#' Full gene co-expression analysis
#'
#' Defines co-expression modules and functionally characterizes
#' each one of them.
#'
#' @param exprs gene expression \code{"data.frame"}
#' @param annot sample annotation \code{"data.frame"}
#' @param ppi protein-protein interaction file
#' @param gmt gene set file in .gmt format
#' @param cor_method a character string indicating which correlation coefficient is to be computed
#' @param cor_pval p-value for gene-gene correlation
#' @param ora_pval p-value for overrepresentation analysis
#' @param nperm number of permutations 
#' @param min_ngen minimal number of genes per submodule 
#' @param diss_thresh module merging correlation threshold for eigengene similarity
#' @param verbose logical. Report analysis steps
#'
#' @return just god knows 
#'
#' @examples
#' cemitool(exprs=expression.df)
#'
#' @export
cemitool <- function(exprs, 
                     annot,
                     ppi,
                     gmt,
                     cor_method=c('pearson', 'spearman'),
                     cor_pval=0.05,
                     ora_pval=0.05,
                     nperm=1000,
                     min_ngen=30,
                     diss_thresh=0.8,
                     plot=F,
                     verbose=F)
{
    coex_mods <- find_modules(exprs,
                              cor_method=match.arg(cor_method),
                              verbose=verbose)

    # if user provides annot file
    if (!is.null(annot)) {
        #run mod_gsea
    }

    # if user provides .gmt file
    if (!is.null(gmt)) {
        #run mod_ora
    }
    
    # if user provides ppi file
    if (!is.null(ppi)) {
        
    }

    # plots all desired charts
    if (plot) {
    
    }

}

