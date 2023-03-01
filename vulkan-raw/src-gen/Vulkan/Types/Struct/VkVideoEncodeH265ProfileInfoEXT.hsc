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

module Vulkan.Types.Struct.VkVideoEncodeH265ProfileInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265ProfileInfoEXT" #-} VkVideoEncodeH265ProfileInfoEXT =
       VkVideoEncodeH265ProfileInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , stdProfileIdc :: StdVideoH265ProfileIdc
         }

instance Storable VkVideoEncodeH265ProfileInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265ProfileInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265ProfileInfoEXT}

  peek ptr = 
    VkVideoEncodeH265ProfileInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stdProfileIdc" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"stdProfileIdc" ptr val

instance Offset "sType" VkVideoEncodeH265ProfileInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ProfileInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265ProfileInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ProfileInfoEXT, pNext}

instance Offset "stdProfileIdc" VkVideoEncodeH265ProfileInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265ProfileInfoEXT, stdProfileIdc}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265ProfileInfoEXT where

#endif