{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_scissor_exclusive

module Vulkan.Types.Struct.VkPipelineViewportExclusiveScissorStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineViewportExclusiveScissorStateCreateInfoNV" #-} VkPipelineViewportExclusiveScissorStateCreateInfoNV =
       VkPipelineViewportExclusiveScissorStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , exclusiveScissorCount :: #{type uint32_t}
         , pExclusiveScissors :: Ptr VkRect2D
         }

instance Storable VkPipelineViewportExclusiveScissorStateCreateInfoNV where
  sizeOf    _ = #{size      VkPipelineViewportExclusiveScissorStateCreateInfoNV}
  alignment _ = #{alignment VkPipelineViewportExclusiveScissorStateCreateInfoNV}

  peek ptr = 
    VkPipelineViewportExclusiveScissorStateCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"exclusiveScissorCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pExclusiveScissors" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"exclusiveScissorCount" ptr val
    pokeField @"pExclusiveScissors" ptr val

instance Offset "sType" VkPipelineViewportExclusiveScissorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportExclusiveScissorStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineViewportExclusiveScissorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportExclusiveScissorStateCreateInfoNV, pNext}

instance Offset "exclusiveScissorCount" VkPipelineViewportExclusiveScissorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportExclusiveScissorStateCreateInfoNV, exclusiveScissorCount}

instance Offset "pExclusiveScissors" VkPipelineViewportExclusiveScissorStateCreateInfoNV where
  rawOffset = #{offset VkPipelineViewportExclusiveScissorStateCreateInfoNV, pExclusiveScissors}

#else

module Vulkan.Types.Struct.VkPipelineViewportExclusiveScissorStateCreateInfoNV where

#endif