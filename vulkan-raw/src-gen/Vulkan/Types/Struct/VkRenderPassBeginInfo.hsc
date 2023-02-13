{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkRenderPassBeginInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.Union.VkClearValue



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassBeginInfo" #-} VkRenderPassBeginInfo =
       VkRenderPassBeginInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , renderPass :: VkRenderPass
         , framebuffer :: VkFramebuffer
         , renderArea :: VkRect2D
         , clearValueCount :: #{type uint32_t}
         , pClearValues :: Ptr VkClearValue
         }

instance Storable VkRenderPassBeginInfo where
  sizeOf    _ = #{size      VkRenderPassBeginInfo}
  alignment _ = #{alignment VkRenderPassBeginInfo}

  peek ptr = 
    VkRenderPassBeginInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"renderPass" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"framebuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"renderArea" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"clearValueCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pClearValues" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"renderPass" ptr val
    pokeField @"framebuffer" ptr val
    pokeField @"renderArea" ptr val
    pokeField @"clearValueCount" ptr val
    pokeField @"pClearValues" ptr val

instance Offset "sType" VkRenderPassBeginInfo where
  rawOffset = #{offset VkRenderPassBeginInfo, sType}

instance Offset "pNext" VkRenderPassBeginInfo where
  rawOffset = #{offset VkRenderPassBeginInfo, pNext}

instance Offset "renderPass" VkRenderPassBeginInfo where
  rawOffset = #{offset VkRenderPassBeginInfo, renderPass}

instance Offset "framebuffer" VkRenderPassBeginInfo where
  rawOffset = #{offset VkRenderPassBeginInfo, framebuffer}

instance Offset "renderArea" VkRenderPassBeginInfo where
  rawOffset = #{offset VkRenderPassBeginInfo, renderArea}

instance Offset "clearValueCount" VkRenderPassBeginInfo where
  rawOffset = #{offset VkRenderPassBeginInfo, clearValueCount}

instance Offset "pClearValues" VkRenderPassBeginInfo where
  rawOffset = #{offset VkRenderPassBeginInfo, pClearValues}