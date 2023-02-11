{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_clip_space_w_scaling

module Vulkan.Types.Struct.VkPipelineViewportWScalingStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkViewportWScalingNV



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineViewportWScalingStateCreateInfoNV" #-} VkPipelineViewportWScalingStateCreateInfoNV =
       VkPipelineViewportWScalingStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , viewportWScalingEnable :: VkBool32
         , viewportCount :: #{type uint32_t}
         , pViewportWScalings :: Ptr VkViewportWScalingNV
         }

instance Storable VkPipelineViewportWScalingStateCreateInfoNV where
  sizeOf    _ = #{size      struct VkPipelineViewportWScalingStateCreateInfoNV}
  alignment _ = #{alignment struct VkPipelineViewportWScalingStateCreateInfoNV}

  peek ptr = 
    VkPipelineViewportWScalingStateCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"viewportWScalingEnable" ptr)
       <*> peek (offset @"viewportCount" ptr)
       <*> peek (offset @"pViewportWScalings" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"viewportWScalingEnable" ptr val
    pokeField @"viewportCount" ptr val
    pokeField @"pViewportWScalings" ptr val

instance Offset "sType" VkPipelineViewportWScalingStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportWScalingStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineViewportWScalingStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportWScalingStateCreateInfoNV, pNext}

instance Offset "viewportWScalingEnable" VkPipelineViewportWScalingStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportWScalingStateCreateInfoNV, viewportWScalingEnable}

instance Offset "viewportCount" VkPipelineViewportWScalingStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportWScalingStateCreateInfoNV, viewportCount}

instance Offset "pViewportWScalings" VkPipelineViewportWScalingStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportWScalingStateCreateInfoNV, pViewportWScalings}

#else

module Vulkan.Types.Struct.VkPipelineViewportWScalingStateCreateInfoNV where

#endif