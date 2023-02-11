{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_viewport_swizzle

module Vulkan.Types.Struct.VkPipelineViewportSwizzleStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineViewportSwizzleStateCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkViewportSwizzleNV



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineViewportSwizzleStateCreateInfoNV" #-} VkPipelineViewportSwizzleStateCreateInfoNV =
       VkPipelineViewportSwizzleStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineViewportSwizzleStateCreateFlagsNV
         , viewportCount :: #{type uint32_t}
         , pViewportSwizzles :: Ptr VkViewportSwizzleNV
         }

instance Storable VkPipelineViewportSwizzleStateCreateInfoNV where
  sizeOf    _ = #{size      struct VkPipelineViewportSwizzleStateCreateInfoNV}
  alignment _ = #{alignment struct VkPipelineViewportSwizzleStateCreateInfoNV}

  peek ptr = 
    VkPipelineViewportSwizzleStateCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"viewportCount" ptr)
       <*> peek (offset @"pViewportSwizzles" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"viewportCount" ptr val
    pokeField @"pViewportSwizzles" ptr val

instance Offset "sType" VkPipelineViewportSwizzleStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportSwizzleStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineViewportSwizzleStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportSwizzleStateCreateInfoNV, pNext}

instance Offset "flags" VkPipelineViewportSwizzleStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportSwizzleStateCreateInfoNV, flags}

instance Offset "viewportCount" VkPipelineViewportSwizzleStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportSwizzleStateCreateInfoNV, viewportCount}

instance Offset "pViewportSwizzles" VkPipelineViewportSwizzleStateCreateInfoNV where
  rawOffset = #{offset struct VkPipelineViewportSwizzleStateCreateInfoNV, pViewportSwizzles}

#else

module Vulkan.Types.Struct.VkPipelineViewportSwizzleStateCreateInfoNV where

#endif