{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkBufferCaptureDescriptorDataInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkBufferCaptureDescriptorDataInfoEXT" #-} VkBufferCaptureDescriptorDataInfoEXT =
       VkBufferCaptureDescriptorDataInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         }

instance Storable VkBufferCaptureDescriptorDataInfoEXT where
  sizeOf    _ = #{size      VkBufferCaptureDescriptorDataInfoEXT}
  alignment _ = #{alignment VkBufferCaptureDescriptorDataInfoEXT}

  peek ptr = 
    VkBufferCaptureDescriptorDataInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkBufferCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkBufferCaptureDescriptorDataInfoEXT, sType}

instance Offset "pNext" VkBufferCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkBufferCaptureDescriptorDataInfoEXT, pNext}

instance Offset "buffer" VkBufferCaptureDescriptorDataInfoEXT where
  rawOffset = #{offset VkBufferCaptureDescriptorDataInfoEXT, buffer}

#else

module Vulkan.Types.Struct.VkBufferCaptureDescriptorDataInfoEXT where

#endif