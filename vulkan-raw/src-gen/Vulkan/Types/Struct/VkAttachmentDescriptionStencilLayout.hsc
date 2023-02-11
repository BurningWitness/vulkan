{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkAttachmentDescriptionStencilLayout where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentDescriptionStencilLayout" #-} VkAttachmentDescriptionStencilLayout =
       VkAttachmentDescriptionStencilLayout
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stencilInitialLayout :: VkImageLayout
         , stencilFinalLayout :: VkImageLayout
         }

instance Storable VkAttachmentDescriptionStencilLayout where
  sizeOf    _ = #{size      struct VkAttachmentDescriptionStencilLayout}
  alignment _ = #{alignment struct VkAttachmentDescriptionStencilLayout}

  peek ptr = 
    VkAttachmentDescriptionStencilLayout
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"stencilInitialLayout" ptr)
       <*> peek (offset @"stencilFinalLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stencilInitialLayout" ptr val
    pokeField @"stencilFinalLayout" ptr val

instance Offset "sType" VkAttachmentDescriptionStencilLayout where
  rawOffset = #{offset struct VkAttachmentDescriptionStencilLayout, sType}

instance Offset "pNext" VkAttachmentDescriptionStencilLayout where
  rawOffset = #{offset struct VkAttachmentDescriptionStencilLayout, pNext}

instance Offset "stencilInitialLayout" VkAttachmentDescriptionStencilLayout where
  rawOffset = #{offset struct VkAttachmentDescriptionStencilLayout, stencilInitialLayout}

instance Offset "stencilFinalLayout" VkAttachmentDescriptionStencilLayout where
  rawOffset = #{offset struct VkAttachmentDescriptionStencilLayout, stencilFinalLayout}

#else

module Vulkan.Types.Struct.VkAttachmentDescriptionStencilLayout where

#endif