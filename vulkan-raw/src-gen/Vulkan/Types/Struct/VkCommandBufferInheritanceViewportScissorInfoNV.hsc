{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_inherited_viewport_scissor

module Vulkan.Types.Struct.VkCommandBufferInheritanceViewportScissorInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkViewport



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferInheritanceViewportScissorInfoNV" #-} VkCommandBufferInheritanceViewportScissorInfoNV =
       VkCommandBufferInheritanceViewportScissorInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , viewportScissor2D :: VkBool32
         , viewportDepthCount :: #{type uint32_t}
         , pViewportDepths :: Ptr VkViewport
         }

instance Storable VkCommandBufferInheritanceViewportScissorInfoNV where
  sizeOf    _ = #{size      struct VkCommandBufferInheritanceViewportScissorInfoNV}
  alignment _ = #{alignment struct VkCommandBufferInheritanceViewportScissorInfoNV}

  peek ptr = 
    VkCommandBufferInheritanceViewportScissorInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"viewportScissor2D" ptr)
       <*> peek (offset @"viewportDepthCount" ptr)
       <*> peek (offset @"pViewportDepths" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"viewportScissor2D" ptr val
    pokeField @"viewportDepthCount" ptr val
    pokeField @"pViewportDepths" ptr val

instance Offset "sType" VkCommandBufferInheritanceViewportScissorInfoNV where
  rawOffset = #{offset struct VkCommandBufferInheritanceViewportScissorInfoNV, sType}

instance Offset "pNext" VkCommandBufferInheritanceViewportScissorInfoNV where
  rawOffset = #{offset struct VkCommandBufferInheritanceViewportScissorInfoNV, pNext}

instance Offset "viewportScissor2D" VkCommandBufferInheritanceViewportScissorInfoNV where
  rawOffset = #{offset struct VkCommandBufferInheritanceViewportScissorInfoNV, viewportScissor2D}

instance Offset "viewportDepthCount" VkCommandBufferInheritanceViewportScissorInfoNV where
  rawOffset = #{offset struct VkCommandBufferInheritanceViewportScissorInfoNV, viewportDepthCount}

instance Offset "pViewportDepths" VkCommandBufferInheritanceViewportScissorInfoNV where
  rawOffset = #{offset struct VkCommandBufferInheritanceViewportScissorInfoNV, pViewportDepths}

#else

module Vulkan.Types.Struct.VkCommandBufferInheritanceViewportScissorInfoNV where

#endif