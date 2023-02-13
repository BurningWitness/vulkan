{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264DpbSlotInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264DpbSlotInfoEXT" #-} VkVideoEncodeH264DpbSlotInfoEXT =
       VkVideoEncodeH264DpbSlotInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , slotIndex :: #{type int8_t}
         , pStdReferenceInfo :: Ptr StdVideoEncodeH264ReferenceInfo
         }

instance Storable VkVideoEncodeH264DpbSlotInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264DpbSlotInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264DpbSlotInfoEXT}

  peek ptr = 
    VkVideoEncodeH264DpbSlotInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"slotIndex" ptr)
       <*> peek (offset @"pStdReferenceInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"slotIndex" ptr val
    pokeField @"pStdReferenceInfo" ptr val

instance Offset "sType" VkVideoEncodeH264DpbSlotInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264DpbSlotInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264DpbSlotInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264DpbSlotInfoEXT, pNext}

instance Offset "slotIndex" VkVideoEncodeH264DpbSlotInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264DpbSlotInfoEXT, slotIndex}

instance Offset "pStdReferenceInfo" VkVideoEncodeH264DpbSlotInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264DpbSlotInfoEXT, pStdReferenceInfo}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264DpbSlotInfoEXT where

#endif