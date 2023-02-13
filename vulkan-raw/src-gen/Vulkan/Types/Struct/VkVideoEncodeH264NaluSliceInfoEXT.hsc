{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264NaluSliceInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH264ReferenceListsInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264NaluSliceInfoEXT" #-} VkVideoEncodeH264NaluSliceInfoEXT =
       VkVideoEncodeH264NaluSliceInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mbCount :: #{type uint32_t}
         , pReferenceFinalLists :: Ptr VkVideoEncodeH264ReferenceListsInfoEXT
         , pSliceHeaderStd :: Ptr StdVideoEncodeH264SliceHeader
         }

instance Storable VkVideoEncodeH264NaluSliceInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264NaluSliceInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264NaluSliceInfoEXT}

  peek ptr = 
    VkVideoEncodeH264NaluSliceInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mbCount" ptr)
       <*> peek (offset @"pReferenceFinalLists" ptr)
       <*> peek (offset @"pSliceHeaderStd" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mbCount" ptr val
    pokeField @"pReferenceFinalLists" ptr val
    pokeField @"pSliceHeaderStd" ptr val

instance Offset "sType" VkVideoEncodeH264NaluSliceInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264NaluSliceInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264NaluSliceInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264NaluSliceInfoEXT, pNext}

instance Offset "mbCount" VkVideoEncodeH264NaluSliceInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264NaluSliceInfoEXT, mbCount}

instance Offset "pReferenceFinalLists" VkVideoEncodeH264NaluSliceInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264NaluSliceInfoEXT, pReferenceFinalLists}

instance Offset "pSliceHeaderStd" VkVideoEncodeH264NaluSliceInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264NaluSliceInfoEXT, pSliceHeaderStd}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264NaluSliceInfoEXT where

#endif