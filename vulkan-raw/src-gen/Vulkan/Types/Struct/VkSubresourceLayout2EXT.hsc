{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_compression_control

module Vulkan.Types.Struct.VkSubresourceLayout2EXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSubresourceLayout



data {-# CTYPE "vulkan/vulkan.h" "VkSubresourceLayout2EXT" #-} VkSubresourceLayout2EXT =
       VkSubresourceLayout2EXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , subresourceLayout :: VkSubresourceLayout
         }

instance Storable VkSubresourceLayout2EXT where
  sizeOf    _ = #{size      VkSubresourceLayout2EXT}
  alignment _ = #{alignment VkSubresourceLayout2EXT}

  peek ptr = 
    VkSubresourceLayout2EXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subresourceLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"subresourceLayout" ptr val

instance Offset "sType" VkSubresourceLayout2EXT where
  rawOffset = #{offset VkSubresourceLayout2EXT, sType}

instance Offset "pNext" VkSubresourceLayout2EXT where
  rawOffset = #{offset VkSubresourceLayout2EXT, pNext}

instance Offset "subresourceLayout" VkSubresourceLayout2EXT where
  rawOffset = #{offset VkSubresourceLayout2EXT, subresourceLayout}

#else

module Vulkan.Types.Struct.VkSubresourceLayout2EXT where

#endif