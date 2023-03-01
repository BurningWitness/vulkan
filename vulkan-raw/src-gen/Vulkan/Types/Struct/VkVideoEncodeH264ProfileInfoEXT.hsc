{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264ProfileInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264ProfileInfoEXT" #-} VkVideoEncodeH264ProfileInfoEXT =
       VkVideoEncodeH264ProfileInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stdProfileIdc :: StdVideoH264ProfileIdc
         }

instance Storable VkVideoEncodeH264ProfileInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH264ProfileInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH264ProfileInfoEXT}

  peek ptr = 
    VkVideoEncodeH264ProfileInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdProfileIdc" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stdProfileIdc" ptr val

instance Offset "sType" VkVideoEncodeH264ProfileInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ProfileInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH264ProfileInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ProfileInfoEXT, pNext}

instance Offset "stdProfileIdc" VkVideoEncodeH264ProfileInfoEXT where
  rawOffset = #{offset VkVideoEncodeH264ProfileInfoEXT, stdProfileIdc}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264ProfileInfoEXT where

#endif