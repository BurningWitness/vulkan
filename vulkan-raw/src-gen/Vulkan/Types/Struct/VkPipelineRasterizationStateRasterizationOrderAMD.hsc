{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_rasterization_order

module Vulkan.Types.Struct.VkPipelineRasterizationStateRasterizationOrderAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkRasterizationOrderAMD
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRasterizationStateRasterizationOrderAMD" #-} VkPipelineRasterizationStateRasterizationOrderAMD =
       VkPipelineRasterizationStateRasterizationOrderAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rasterizationOrder :: VkRasterizationOrderAMD -- ^ Rasterization order to use for the pipeline
         }

instance Storable VkPipelineRasterizationStateRasterizationOrderAMD where
  sizeOf    _ = #{size      VkPipelineRasterizationStateRasterizationOrderAMD}
  alignment _ = #{alignment VkPipelineRasterizationStateRasterizationOrderAMD}

  peek ptr = 
    VkPipelineRasterizationStateRasterizationOrderAMD
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rasterizationOrder" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rasterizationOrder" ptr val

instance Offset "sType" VkPipelineRasterizationStateRasterizationOrderAMD where
  rawOffset = #{offset VkPipelineRasterizationStateRasterizationOrderAMD, sType}

instance Offset "pNext" VkPipelineRasterizationStateRasterizationOrderAMD where
  rawOffset = #{offset VkPipelineRasterizationStateRasterizationOrderAMD, pNext}

instance Offset "rasterizationOrder" VkPipelineRasterizationStateRasterizationOrderAMD where
  rawOffset = #{offset VkPipelineRasterizationStateRasterizationOrderAMD, rasterizationOrder}

#else

module Vulkan.Types.Struct.VkPipelineRasterizationStateRasterizationOrderAMD where

#endif