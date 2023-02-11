{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264VclFrameInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH264NaluSliceInfoEXT
import Vulkan.Types.Struct.VkVideoEncodeH264ReferenceListsInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264VclFrameInfoEXT" #-} VkVideoEncodeH264VclFrameInfoEXT =
       VkVideoEncodeH264VclFrameInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pReferenceFinalLists :: Ptr VkVideoEncodeH264ReferenceListsInfoEXT
         , naluSliceEntryCount :: #{type uint32_t}
         , pNaluSliceEntries :: Ptr VkVideoEncodeH264NaluSliceInfoEXT
         , pCurrentPictureInfo :: Ptr StdVideoEncodeH264PictureInfo
         }

instance Storable VkVideoEncodeH264VclFrameInfoEXT where
  sizeOf    _ = #{size      struct VkVideoEncodeH264VclFrameInfoEXT}
  alignment _ = #{alignment struct VkVideoEncodeH264VclFrameInfoEXT}

  peek ptr = 
    VkVideoEncodeH264VclFrameInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pReferenceFinalLists" ptr)
       <*> peek (offset @"naluSliceEntryCount" ptr)
       <*> peek (offset @"pNaluSliceEntries" ptr)
       <*> peek (offset @"pCurrentPictureInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pReferenceFinalLists" ptr val
    pokeField @"naluSliceEntryCount" ptr val
    pokeField @"pNaluSliceEntries" ptr val
    pokeField @"pCurrentPictureInfo" ptr val

instance Offset "sType" VkVideoEncodeH264VclFrameInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH264VclFrameInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264VclFrameInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH264VclFrameInfoEXT, pNext}

instance Offset "pReferenceFinalLists" VkVideoEncodeH264VclFrameInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH264VclFrameInfoEXT, pReferenceFinalLists}

instance Offset "naluSliceEntryCount" VkVideoEncodeH264VclFrameInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH264VclFrameInfoEXT, naluSliceEntryCount}

instance Offset "pNaluSliceEntries" VkVideoEncodeH264VclFrameInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH264VclFrameInfoEXT, pNaluSliceEntries}

instance Offset "pCurrentPictureInfo" VkVideoEncodeH264VclFrameInfoEXT where
  rawOffset = #{offset struct VkVideoEncodeH264VclFrameInfoEXT, pCurrentPictureInfo}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264VclFrameInfoEXT where

#endif