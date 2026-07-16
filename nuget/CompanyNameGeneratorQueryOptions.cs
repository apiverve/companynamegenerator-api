using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CompanyNameGenerator
{
    /// <summary>
    /// Query options for the Company Name Generator API
    /// </summary>
    public class CompanyNameGeneratorQueryOptions
    {
        /// <summary>
        /// The keyword to generate company names from
        /// </summary>
        [JsonProperty("keyword")]
        public string Keyword { get; set; }

        /// <summary>
        /// The number of company names to generate
        /// </summary>
        [JsonProperty("count")]
        public int? Count { get; set; }
    }
}
