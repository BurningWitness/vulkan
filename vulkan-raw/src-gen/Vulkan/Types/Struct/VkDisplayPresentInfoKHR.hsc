{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display_swapchain

module Vulkan.Types.Struct.VkDisplayPresentInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayPresentInfoKHR" #-} VkDisplayPresentInfoKHR =
       VkDisplayPresentInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcRect :: VkRect2D -- ^ Rectangle within the presentable image to read pixel data from when presenting to the display.
         , dstRect :: VkRect2D -- ^ Rectangle within the current display mode's visible region to display srcRectangle in.
         , persistent :: VkBool32 -- ^ For smart displays, use buffered mode.  If the display properties member "persistentMode" is VK_FALSE, this member must always be VK_FALSE.
         }

instance Storable VkDisplayPresentInfoKHR where
  sizeOf    _ = #{size      VkDisplayPresentInfoKHR}
  alignment _ = #{alignment VkDisplayPresentInfoKHR}

  peek ptr = 
    VkDisplayPresentInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcRect" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstRect" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"persistent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcRect" ptr val
    pokeField @"dstRect" ptr val
    pokeField @"persistent" ptr val

instance Offset "sType" VkDisplayPresentInfoKHR where
  rawOffset = #{offset VkDisplayPresentInfoKHR, sType}

instance Offset "pNext" VkDisplayPresentInfoKHR where
  rawOffset = #{offset VkDisplayPresentInfoKHR, pNext}

instance Offset "srcRect" VkDisplayPresentInfoKHR where
  rawOffset = #{offset VkDisplayPresentInfoKHR, srcRect}

instance Offset "dstRect" VkDisplayPresentInfoKHR where
  rawOffset = #{offset VkDisplayPresentInfoKHR, dstRect}

instance Offset "persistent" VkDisplayPresentInfoKHR where
  rawOffset = #{offset VkDisplayPresentInfoKHR, persistent}

#else

module Vulkan.Types.Struct.VkDisplayPresentInfoKHR where

#endif