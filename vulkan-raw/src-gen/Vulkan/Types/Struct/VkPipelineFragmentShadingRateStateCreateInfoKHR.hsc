{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shading_rate

module Vulkan.Types.Struct.VkPipelineFragmentShadingRateStateCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFragmentShadingRateCombinerOpKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineFragmentShadingRateStateCreateInfoKHR" #-} VkPipelineFragmentShadingRateStateCreateInfoKHR =
       VkPipelineFragmentShadingRateStateCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentSize :: VkExtent2D
         , combinerOps :: VkFragmentShadingRateCombinerOpKHR
         }

instance Storable VkPipelineFragmentShadingRateStateCreateInfoKHR where
  sizeOf    _ = #{size      VkPipelineFragmentShadingRateStateCreateInfoKHR}
  alignment _ = #{alignment VkPipelineFragmentShadingRateStateCreateInfoKHR}

  peek ptr = 
    VkPipelineFragmentShadingRateStateCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fragmentSize" ptr)
       <*> peek (offset @"combinerOps" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentSize" ptr val
    pokeField @"combinerOps" ptr val

instance Offset "sType" VkPipelineFragmentShadingRateStateCreateInfoKHR where
  rawOffset = #{offset VkPipelineFragmentShadingRateStateCreateInfoKHR, sType}

instance Offset "pNext" VkPipelineFragmentShadingRateStateCreateInfoKHR where
  rawOffset = #{offset VkPipelineFragmentShadingRateStateCreateInfoKHR, pNext}

instance Offset "fragmentSize" VkPipelineFragmentShadingRateStateCreateInfoKHR where
  rawOffset = #{offset VkPipelineFragmentShadingRateStateCreateInfoKHR, fragmentSize}

instance Offset "combinerOps" VkPipelineFragmentShadingRateStateCreateInfoKHR where
  rawOffset = #{offset VkPipelineFragmentShadingRateStateCreateInfoKHR, combinerOps}

#else

module Vulkan.Types.Struct.VkPipelineFragmentShadingRateStateCreateInfoKHR where

#endif