{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264EmitPictureParametersInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264EmitPictureParametersInfoEXT" #-} VkVideoEncodeH264EmitPictureParametersInfoEXT =
       VkVideoEncodeH264EmitPictureParametersInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , spsId :: #{type uint8_t}
         , emitSpsEnable :: VkBool32
         , ppsIdEntryCount :: #{type uint32_t}
         , ppsIdEntries :: Ptr #{type uint8_t}
         }

instance Storable VkVideoEncodeH264EmitPictureParametersInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264EmitPictureParametersInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264EmitPictureParametersInfoEXT}

  peek ptr = 
    VkVideoEncodeH264EmitPictureParametersInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"spsId" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"emitSpsEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ppsIdEntryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ppsIdEntries" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"spsId" ptr val
    pokeField @"emitSpsEnable" ptr val
    pokeField @"ppsIdEntryCount" ptr val
    pokeField @"ppsIdEntries" ptr val

instance Offset "sType" VkVideoEncodeH264EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264EmitPictureParametersInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264EmitPictureParametersInfoEXT, pNext}

instance Offset "spsId" VkVideoEncodeH264EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264EmitPictureParametersInfoEXT, spsId}

instance Offset "emitSpsEnable" VkVideoEncodeH264EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264EmitPictureParametersInfoEXT, emitSpsEnable}

instance Offset "ppsIdEntryCount" VkVideoEncodeH264EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264EmitPictureParametersInfoEXT, ppsIdEntryCount}

instance Offset "ppsIdEntries" VkVideoEncodeH264EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264EmitPictureParametersInfoEXT, ppsIdEntries}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264EmitPictureParametersInfoEXT where

#endif