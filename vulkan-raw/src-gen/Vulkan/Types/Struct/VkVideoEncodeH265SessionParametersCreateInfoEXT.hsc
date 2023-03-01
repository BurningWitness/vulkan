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

module Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersAddInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkVideoEncodeH265SessionParametersCreateInfoEXT" #-} VkVideoEncodeH265SessionParametersCreateInfoEXT =
       VkVideoEncodeH265SessionParametersCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxStdVPSCount :: #{type uint32_t}
         , maxStdSPSCount :: #{type uint32_t}
         , maxStdPPSCount :: #{type uint32_t}
         , pParametersAddInfo :: Ptr VkVideoEncodeH265SessionParametersAddInfoEXT
         }

instance Storable VkVideoEncodeH265SessionParametersCreateInfoEXT where
  sizeOf    _ = #{size      VkVideoEncodeH265SessionParametersCreateInfoEXT}
  alignment _ = #{alignment VkVideoEncodeH265SessionParametersCreateInfoEXT}

  peek ptr = 
    VkVideoEncodeH265SessionParametersCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxStdVPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxStdSPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxStdPPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pParametersAddInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxStdVPSCount" ptr val
    pokeField @"maxStdSPSCount" ptr val
    pokeField @"maxStdPPSCount" ptr val
    pokeField @"pParametersAddInfo" ptr val

instance Offset "sType" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersCreateInfoEXT, sType}

instance Offset "pNext" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersCreateInfoEXT, pNext}

instance Offset "maxStdVPSCount" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersCreateInfoEXT, maxStdVPSCount}

instance Offset "maxStdSPSCount" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersCreateInfoEXT, maxStdSPSCount}

instance Offset "maxStdPPSCount" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersCreateInfoEXT, maxStdPPSCount}

instance Offset "pParametersAddInfo" VkVideoEncodeH265SessionParametersCreateInfoEXT where
  rawOffset = #{offset VkVideoEncodeH265SessionParametersCreateInfoEXT, pParametersAddInfo}

#else

module Vulkan.Types.Struct.VkVideoEncodeH265SessionParametersCreateInfoEXT where

#endif