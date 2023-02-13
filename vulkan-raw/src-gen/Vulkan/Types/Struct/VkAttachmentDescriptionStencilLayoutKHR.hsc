{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_separate_depth_stencil_layouts

module Vulkan.Types.Struct.VkAttachmentDescriptionStencilLayoutKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentDescriptionStencilLayoutKHR" #-} VkAttachmentDescriptionStencilLayoutKHR =
       VkAttachmentDescriptionStencilLayoutKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stencilInitialLayout :: VkImageLayout
         , stencilFinalLayout :: VkImageLayout
         }

instance Storable VkAttachmentDescriptionStencilLayoutKHR where
  sizeOf    _ = #{size      VkAttachmentDescriptionStencilLayoutKHR}
  alignment _ = #{alignment VkAttachmentDescriptionStencilLayoutKHR}

  peek ptr = 
    VkAttachmentDescriptionStencilLayoutKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stencilInitialLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stencilFinalLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stencilInitialLayout" ptr val
    pokeField @"stencilFinalLayout" ptr val

instance Offset "sType" VkAttachmentDescriptionStencilLayoutKHR where
  rawOffset = #{offset VkAttachmentDescriptionStencilLayoutKHR, sType}

instance Offset "pNext" VkAttachmentDescriptionStencilLayoutKHR where
  rawOffset = #{offset VkAttachmentDescriptionStencilLayoutKHR, pNext}

instance Offset "stencilInitialLayout" VkAttachmentDescriptionStencilLayoutKHR where
  rawOffset = #{offset VkAttachmentDescriptionStencilLayoutKHR, stencilInitialLayout}

instance Offset "stencilFinalLayout" VkAttachmentDescriptionStencilLayoutKHR where
  rawOffset = #{offset VkAttachmentDescriptionStencilLayoutKHR, stencilFinalLayout}

#else

module Vulkan.Types.Struct.VkAttachmentDescriptionStencilLayoutKHR where

#endif