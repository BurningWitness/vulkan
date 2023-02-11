{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_copy_memory_indirect

module Vulkan.Types.Struct.VkCopyMemoryToImageIndirectCommandNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkCopyMemoryToImageIndirectCommandNV" #-} VkCopyMemoryToImageIndirectCommandNV =
       VkCopyMemoryToImageIndirectCommandNV
         { srcAddress :: VkDeviceAddress
         , bufferRowLength :: #{type uint32_t} -- ^ Specified in texels
         , bufferImageHeight :: #{type uint32_t}
         , imageSubresource :: VkImageSubresourceLayers
         , imageOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , imageExtent :: VkExtent3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkCopyMemoryToImageIndirectCommandNV where
  sizeOf    _ = #{size      struct VkCopyMemoryToImageIndirectCommandNV}
  alignment _ = #{alignment struct VkCopyMemoryToImageIndirectCommandNV}

  peek ptr = 
    VkCopyMemoryToImageIndirectCommandNV
       <$> peek (offset @"srcAddress" ptr)
       <*> peek (offset @"bufferRowLength" ptr)
       <*> peek (offset @"bufferImageHeight" ptr)
       <*> peek (offset @"imageSubresource" ptr)
       <*> peek (offset @"imageOffset" ptr)
       <*> peek (offset @"imageExtent" ptr)

  poke ptr val = do
    pokeField @"srcAddress" ptr val
    pokeField @"bufferRowLength" ptr val
    pokeField @"bufferImageHeight" ptr val
    pokeField @"imageSubresource" ptr val
    pokeField @"imageOffset" ptr val
    pokeField @"imageExtent" ptr val

instance Offset "srcAddress" VkCopyMemoryToImageIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryToImageIndirectCommandNV, srcAddress}

instance Offset "bufferRowLength" VkCopyMemoryToImageIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryToImageIndirectCommandNV, bufferRowLength}

instance Offset "bufferImageHeight" VkCopyMemoryToImageIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryToImageIndirectCommandNV, bufferImageHeight}

instance Offset "imageSubresource" VkCopyMemoryToImageIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryToImageIndirectCommandNV, imageSubresource}

instance Offset "imageOffset" VkCopyMemoryToImageIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryToImageIndirectCommandNV, imageOffset}

instance Offset "imageExtent" VkCopyMemoryToImageIndirectCommandNV where
  rawOffset = #{offset struct VkCopyMemoryToImageIndirectCommandNV, imageExtent}

#else

module Vulkan.Types.Struct.VkCopyMemoryToImageIndirectCommandNV where

#endif