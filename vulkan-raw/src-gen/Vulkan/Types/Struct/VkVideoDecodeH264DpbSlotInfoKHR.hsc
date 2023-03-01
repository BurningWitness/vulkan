{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h264

module Vulkan.Types.Struct.VkVideoDecodeH264DpbSlotInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH264DpbSlotInfoKHR" #-} VkVideoDecodeH264DpbSlotInfoKHR =
       VkVideoDecodeH264DpbSlotInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pStdReferenceInfo :: Ptr StdVideoDecodeH264ReferenceInfo
         }

instance Storable VkVideoDecodeH264DpbSlotInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeH264DpbSlotInfoKHR}
  alignment _ = #{alignment VkVideoDecodeH264DpbSlotInfoKHR}

  peek ptr = 
    VkVideoDecodeH264DpbSlotInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStdReferenceInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pStdReferenceInfo" ptr val

instance Offset "sType" VkVideoDecodeH264DpbSlotInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264DpbSlotInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH264DpbSlotInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264DpbSlotInfoKHR, pNext}

instance Offset "pStdReferenceInfo" VkVideoDecodeH264DpbSlotInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264DpbSlotInfoKHR, pStdReferenceInfo}

#else

module Vulkan.Types.Struct.VkVideoDecodeH264DpbSlotInfoKHR where

#endif