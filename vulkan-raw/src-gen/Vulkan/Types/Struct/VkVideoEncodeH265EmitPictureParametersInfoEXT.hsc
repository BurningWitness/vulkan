{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h265

module Vulkan.Types.Struct.VkVideoEncodeH265EmitPictureParametersInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265EmitPictureParametersInfoEXT" #-} VkVideoEncodeH265EmitPictureParametersInfoEXT =
       VkVideoEncodeH265EmitPictureParametersInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , vpsId :: #{type uint8_t}
         , spsId :: #{type uint8_t}
         , emitVpsEnable :: VkBool32
         , emitSpsEnable :: VkBool32
         , ppsIdEntryCount :: #{type uint32_t}
         , ppsIdEntries :: Ptr #{type uint8_t}
         }

instance Storable VkVideoEncodeH265EmitPictureParametersInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265EmitPictureParametersInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265EmitPictureParametersInfoEXT}

  peek ptr = 
    VkVideoEncodeH265EmitPictureParametersInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vpsId" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"spsId" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"emitVpsEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"emitSpsEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ppsIdEntryCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"ppsIdEntries" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"vpsId" ptr val
    pokeField @"spsId" ptr val
    pokeField @"emitVpsEnable" ptr val
    pokeField @"emitSpsEnable" ptr val
    pokeField @"ppsIdEntryCount" ptr val
    pokeField @"ppsIdEntries" ptr val

instance Offset "sType" VkVideoEncodeH265EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265EmitPictureParametersInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265EmitPictureParametersInfoEXT, pNext}

instance Offset "vpsId" VkVideoEncodeH265EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265EmitPictureParametersInfoEXT, vpsId}

instance Offset "spsId" VkVideoEncodeH265EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265EmitPictureParametersInfoEXT, spsId}

instance Offset "emitVpsEnable" VkVideoEncodeH265EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265EmitPictureParametersInfoEXT, emitVpsEnable}

instance Offset "emitSpsEnable" VkVideoEncodeH265EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265EmitPictureParametersInfoEXT, emitSpsEnable}

instance Offset "ppsIdEntryCount" VkVideoEncodeH265EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265EmitPictureParametersInfoEXT, ppsIdEntryCount}

instance Offset "ppsIdEntries" VkVideoEncodeH265EmitPictureParametersInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265EmitPictureParametersInfoEXT, ppsIdEntries}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265EmitPictureParametersInfoEXT where

#endif