{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_video_encode_h264

module Vulkan.Types.Struct.VkVideoEncodeH264QpEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH264QpEXT" #-} VkVideoEncodeH264QpEXT =
       VkVideoEncodeH264QpEXT
         { qpI :: #{type int32_t}
         , qpP :: #{type int32_t}
         , qpB :: #{type int32_t}
         }

instance Storable VkVideoEncodeH264QpEXT where
  sizeOf    _ = #{size      struct VkVideoEncodeH264QpEXT}
  alignment _ = #{alignment struct VkVideoEncodeH264QpEXT}

  peek ptr = 
    VkVideoEncodeH264QpEXT
       <$> peek (offset @"qpI" ptr)
       <*> peek (offset @"qpP" ptr)
       <*> peek (offset @"qpB" ptr)

  poke ptr val = do
    pokeField @"qpI" ptr val
    pokeField @"qpP" ptr val
    pokeField @"qpB" ptr val

instance Offset "qpI" VkVideoEncodeH264QpEXT where
  rawOffset = #{offset struct VkVideoEncodeH264QpEXT, qpI}

instance Offset "qpP" VkVideoEncodeH264QpEXT where
  rawOffset = #{offset struct VkVideoEncodeH264QpEXT, qpP}

instance Offset "qpB" VkVideoEncodeH264QpEXT where
  rawOffset = #{offset struct VkVideoEncodeH264QpEXT, qpB}

#else

module Vulkan.Types.Struct.VkVideoEncodeH264QpEXT where

#endif