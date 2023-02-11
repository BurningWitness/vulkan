{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoBeginCodingInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoBeginCodingFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkVideoReferenceSlotInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoBeginCodingInfoKHR" #-} VkVideoBeginCodingInfoKHR =
       VkVideoBeginCodingInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoBeginCodingFlagsKHR
         , videoSession :: VkVideoSessionKHR
         , videoSessionParameters :: VkVideoSessionParametersKHR
         , referenceSlotCount :: #{type uint32_t}
         , pReferenceSlots :: Ptr VkVideoReferenceSlotInfoKHR
         }

instance Storable VkVideoBeginCodingInfoKHR where
  sizeOf    _ = #{size      struct VkVideoBeginCodingInfoKHR}
  alignment _ = #{alignment struct VkVideoBeginCodingInfoKHR}

  peek ptr = 
    VkVideoBeginCodingInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"videoSession" ptr)
       <*> peek (offset @"videoSessionParameters" ptr)
       <*> peek (offset @"referenceSlotCount" ptr)
       <*> peek (offset @"pReferenceSlots" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"videoSession" ptr val
    pokeField @"videoSessionParameters" ptr val
    pokeField @"referenceSlotCount" ptr val
    pokeField @"pReferenceSlots" ptr val

instance Offset "sType" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset struct VkVideoBeginCodingInfoKHR, sType}

instance Offset "pNext" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset struct VkVideoBeginCodingInfoKHR, pNext}

instance Offset "flags" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset struct VkVideoBeginCodingInfoKHR, flags}

instance Offset "videoSession" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset struct VkVideoBeginCodingInfoKHR, videoSession}

instance Offset "videoSessionParameters" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset struct VkVideoBeginCodingInfoKHR, videoSessionParameters}

instance Offset "referenceSlotCount" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset struct VkVideoBeginCodingInfoKHR, referenceSlotCount}

instance Offset "pReferenceSlots" VkVideoBeginCodingInfoKHR where
  rawOffset = #{offset struct VkVideoBeginCodingInfoKHR, pReferenceSlots}

#else

module Vulkan.Types.Struct.VkVideoBeginCodingInfoKHR where

#endif