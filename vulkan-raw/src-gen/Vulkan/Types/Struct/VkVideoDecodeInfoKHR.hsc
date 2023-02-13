{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_queue

module Vulkan.Types.Struct.VkVideoDecodeInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoDecodeFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoPictureResourceInfoKHR
import Vulkan.Types.Struct.VkVideoReferenceSlotInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeInfoKHR" #-} VkVideoDecodeInfoKHR =
       VkVideoDecodeInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoDecodeFlagsKHR
         , srcBuffer :: VkBuffer
         , srcBufferOffset :: VkDeviceSize
         , srcBufferRange :: VkDeviceSize
         , dstPictureResource :: VkVideoPictureResourceInfoKHR
         , pSetupReferenceSlot :: Ptr VkVideoReferenceSlotInfoKHR
         , referenceSlotCount :: #{type uint32_t}
         , pReferenceSlots :: Ptr VkVideoReferenceSlotInfoKHR
         }

instance Storable VkVideoDecodeInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeInfoKHR}
  alignment _ = #{alignment VkVideoDecodeInfoKHR}

  peek ptr = 
    VkVideoDecodeInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcBufferOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcBufferRange" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstPictureResource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSetupReferenceSlot" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"referenceSlotCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pReferenceSlots" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"srcBuffer" ptr val
    pokeField @"srcBufferOffset" ptr val
    pokeField @"srcBufferRange" ptr val
    pokeField @"dstPictureResource" ptr val
    pokeField @"pSetupReferenceSlot" ptr val
    pokeField @"referenceSlotCount" ptr val
    pokeField @"pReferenceSlots" ptr val

instance Offset "sType" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, pNext}

instance Offset "flags" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, flags}

instance Offset "srcBuffer" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, srcBuffer}

instance Offset "srcBufferOffset" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, srcBufferOffset}

instance Offset "srcBufferRange" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, srcBufferRange}

instance Offset "dstPictureResource" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, dstPictureResource}

instance Offset "pSetupReferenceSlot" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, pSetupReferenceSlot}

instance Offset "referenceSlotCount" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, referenceSlotCount}

instance Offset "pReferenceSlots" VkVideoDecodeInfoKHR where
  rawOffset = #{offset VkVideoDecodeInfoKHR, pReferenceSlots}

#else

module Vulkan.Types.Struct.VkVideoDecodeInfoKHR where

#endif