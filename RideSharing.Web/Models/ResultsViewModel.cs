﻿using RideSharing.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RideSharingWeb.Models
{
    public class ResultsViewModel
    {
        public List<long> SimulationIds { get; set; }

        public ResultsViewModel()
        {
            SimulationIds = new List<long>();
        }
    }
}