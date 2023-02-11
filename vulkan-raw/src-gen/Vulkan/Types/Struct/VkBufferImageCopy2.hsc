{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkBufferImageCopy2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkBufferImageCopy2" #-} VkBufferImageCopy2 =
       VkBufferImageCopy2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , bufferOffset :: VkDeviceSize -- ^ Specified in bytes
         , bufferRowLength :: #{type uint32_t} -- ^ Specified in texels
         , bufferImageHeight :: #{type uint32_t}
         , imageSubresource :: VkImageSubresourceLayers
         , imageOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , imageExtent :: VkExtent3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkBufferImageCopy2 where
  sizeOf    _ = #{size      struct VkBufferImageCopy2}
  alignment _ = #{alignment struct VkBufferImageCopy2}

  peek ptr = 
    VkBufferImageCopy2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"bufferOffset" ptr)
       <*> peek (offset @"bufferRowLength" ptr)
       <*> peek (offset @"bufferImageHeight" ptr)
       <*> peek (offset @"imageSubresource" ptr)
       <*> peek (offset @"imageOffset" ptr)
       <*> peek (offset @"imageExtent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bufferOffset" ptr val
    pokeField @"bufferRowLength" ptr val
    pokeField @"bufferImageHeight" ptr val
    pokeField @"imageSubresource" ptr val
    pokeField @"imageOffset" ptr val
    pokeField @"imageExtent" ptr val

instance Offset "sType" VkBufferImageCopy2 where
  rawOffset = #{offset struct VkBufferImageCopy2, sType}

instance Offset "pNext" VkBufferImageCopy2 where
  rawOffset = #{offset struct VkBufferImageCopy2, pNext}

instance Offset "bufferOffset" VkBufferImageCopy2 where
  rawOffset = #{offset struct VkBufferImageCopy2, bufferOffset}

instance Offset "bufferRowLength" VkBufferImageCopy2 where
  rawOffset = #{offset struct VkBufferImageCopy2, bufferRowLength}

instance Offset "bufferImageHeight" VkBufferImageCopy2 where
  rawOffset = #{offset struct VkBufferImageCopy2, bufferImageHeight}

instance Offset "imageSubresource" VkBufferImageCopy2 where
  rawOffset = #{offset struct VkBufferImageCopy2, imageSubresource}

instance Offset "imageOffset" VkBufferImageCopy2 where
  rawOffset = #{offset struct VkBufferImageCopy2, imageOffset}

instance Offset "imageExtent" VkBufferImageCopy2 where
  rawOffset = #{offset struct VkBufferImageCopy2, imageExtent}

#else

module Vulkan.Types.Struct.VkBufferImageCopy2 where

#endif